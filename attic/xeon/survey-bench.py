#!/usr/bin/env python

import subprocess, re

# p = subprocess.Popen(['curl', '--compressed', '-L', '-H', 'Expect:', '-H', 'X-API-Key: ' + userkey, 'http://2016sv.icfpcontest.org/api/blob/'+hashstr], stdout=subprocess.PIPE)
#    con, _ = p.communicate(None)
with open("/proc/cpuinfo","r") as fp:
    for l in fp:
        if re.match('model name', l):
            m = re.search('\:\s*([^@]*)\s*\@',l)
            rawcpuname = m.group(1)
            cpuname = re.sub('[^A-Za-z0-9]','_',rawcpuname)
            print cpuname


def generate_modified_code(sx,sy,sz,t_max):
    with open("saya.cpp","r") as f_in:
      with open("saya-mod.cpp","w") as f_out:
        for l in f_in:
            ret=l
            if re.match('\#define SX',l):
                ret = "#define SX {}\n".format(sx)
            if re.match('\#define SY',l):
                ret = "#define SY {}\n".format(sy)
            if re.match('\#define SZ',l):
                ret = "#define SZ {}\n".format(sz)
            if re.match('\#define T_MAX',l):
                ret = "#define T_MAX {}\n".format(t_max)
            f_out.write(ret)

class Param:
    pass

dims = [32,34,64,68,128,130,256,258]
for sx in dims:
    for sy in dims:
        for sz in dims:
            for t in [1000,4000,8000]:
                p = Param()
                p.sx=sx
                p.sy=sy
                p.sz=sz
                p.t=t

                generate_modified_code(sx,sy,sz,t)
                subprocess.call(["make","saya-mod.out"])
                subprocess.call("./run-saya-mod.sh",shell=True)
