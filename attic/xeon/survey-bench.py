#!/usr/bin/env python

import subprocess, random, re

with open("/proc/cpuinfo","r") as fp:
    for l in fp:
        if re.match('model name', l):
            m = re.search('\:\s*([^@]*)\s*\@',l)
            rawcpuname = m.group(1)
            cpuname = re.sub('[^A-Za-z0-9]','_',rawcpuname)
            print cpuname


def generate_modified_code(sx,sy,sz,t_max,hier):
    with open("saya-bara.cpp","r") as f_in:
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
dims = [10,16,18,32,34,66,130,258]

used = set()


for ipow in range(5,20):
    zpow = 2**ipow
    for sx in [6,10,18,34,66]:
        sy = sx
        for sz in [18,34,66,130,258]:
            size = sx*sy*sz
            if size < zpow or size >= 2*zpow:
                continue

            for t in [32,128,1024]:
                for h in [0]:
                    generate_modified_code(sx,sy,sz,t,h)
                    subprocess.call(["make","saya-mod.out"])
                    subprocess.call("./run-saya-mod.sh",shell=True)



# while True:
#     for ipow in range(5,20):
#         zpow = 2**ipow
#         for draw in range(1000):
#             sx = random.choice([6,10,18,34,66])
#             sy = random.choice([6,10,16,18,32,34,66,130,258])
#             sz = random.choice([18,34,66,130,258])
#             size = sx*sy*sz
#             if size < zpow or size >= 8*zpow:
#                 continue
#             if (sx,sy,sz) in used:
#                 continue
#         if (sx,sy,sz) in used:
#             continue
#     
#         used.add((sx,sy,sz))
#         for t in [32,128,1024]:
#             for h in [0]:
#                 generate_modified_code(sx,sy,sz,t,h)
#                 subprocess.call(["make","saya-mod.out"])
#                 subprocess.call("./run-saya-mod.sh",shell=True)
