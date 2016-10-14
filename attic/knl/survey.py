#!/usr/bin/env python

import copy,re,subprocess

class Parameter:
    def __init__(this, typ, name):
        this.typ = typ
        this.name = name

def param_choices(x):
    return param_choices_internal(x.items())

def param_choices_internal(list_of_ranges):
    if len(list_of_ranges) == 0:
        return [{}]
    head = list_of_ranges[0]
    tail = list_of_ranges[1:]

    p,r = head

    rec = param_choices_internal(tail)
    ret = []
    for v in r:
        for tv0 in rec:
            tv = copy.deepcopy(tv0)
            tv[p] = v;
            ret.append(tv)
    return ret


def replace_params(src, params):
    ret = ''
    for l in src.split("\n"):
        for k,v in params.items():
            typ, name = k
            if re.search('const',l) and re.search(typ,l) and re.search(name,l):
                l = "const {} {} = {};".format(typ, name, v)
        ret += l + "\n"
    return ret
        

global ctr
ctr = 0

class SurveyTask:
    def __init__(this):
        #this.template = "1d-stencil-barrier.cpp"
        this.template = "task-parallel.cpp"
        #this.template = "1d-stencil-realcomm.cpp"
        this.ranges = {
            ("int", "n_task") : [2**n for n in range(15,20)]
#            ("int", "n_unroll") : [2**n for n in range(0,7)]
#            ("int", "n_time") : [2**n for n in range(10,15)]
        }
    def survey(this):
        for x in param_choices(this.ranges):
            this.benchmark(x)

    def benchmark(this, params):
        global ctr
        ctr +=1
        src = ''
        with open(this.template,'r') as fp:
            src = fp.read()
        src2 = replace_params(src, params)

        with open('tmp.cpp'.format(ctr),'w') as fp:
            fp.write(src2)
        subprocess.call("make tmp.out",shell=True)
        for t in range(10):
            subprocess.call("./tmp.out >> benchmark.txt",shell=True)
        

SurveyTask().survey()
