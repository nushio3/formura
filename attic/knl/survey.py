#!/usr/bin/env python

import copy

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

class SurveyTask:
    def __init__(this):
        this.template = "task-parallel.cpp"
        this.ranges = {
            ("int", "n_time") : [2**n for n in range(10,20)],
            ("int", "n_unroll") : [2**n for n in range(1,5)]
        }
    def survey(this):
        for x in param_choices(this.ranges):
            print x

SurveyTask().survey()
