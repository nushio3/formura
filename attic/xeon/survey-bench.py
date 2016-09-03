#!/usr/bin/env python

import subprocess, re

with open("/proc/cpuinfo","r") as fp:
    for l in fp:
        if re.match('model name', l):
            m = re.search('\:\s*([^@]*)\s*\@',l)
            rawcpuname = m.group(1)
            cpuname = re.sub('[^A-Za-z0-9]','_',rawcpuname)
            print cpuname


def generate_modified_code(sx,sy,sz,t_max,hier):
    with open("saya-saya.cpp","r") as f_in:
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
            if re.match('\#define HIERARCHY_ITER',l):
                ret = "#define HIERARCHY_ITER {}\n".format(hier)
            f_out.write(ret)

#dims = [32,34,64,68,96,128,130,192,256,258,320,512,514]
dims = [6,10,32,34,64,66,128,130,256,258]

for ipow in range(18,1000):
    zpow = 2**ipow
    for sx in [4,8,10]:
        for sz in [66,130,258]:
            for sy in dims:
                size = sx*sy*sz
                if size < zpow or size >= 2*zpow:
                    continue
                for t in [128,256,1024]:
                    for h in [8,16,32]:
                        generate_modified_code(sx,sy,sz,t,h)
                        subprocess.call(["make","saya-mod.out"])
                        subprocess.call("./run-saya-mod.sh",shell=True)
