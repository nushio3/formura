#!/usr/bin/env python
import re
import sys
import subprocess
import numpy as np

t_ax = set()
x_ax = set()
y_ax = set()
z_ax = set()

for fn in sys.argv[1:]:
    print fn
    m = re.search('monitor-[\d]+-[\d]+')
    print m.group(0),m.group(1)
    with open(fn,'rb') as fp:
        gps = np.fromfile(fp, dtype=np.int32,count=6)
        print gps
        x,y,z,sx,sy,sz = gps

        x_ax.add(x)
        y_ax.add(y)
        z_ax.add(z)

        secz_u = np.fromfile(fp, dtype=np.float64,count=sx*sy)
        secz_u = np.fromfile(fp, dtype=np.float64,count=sx*sy)

        secy_u = np.fromfile(fp, dtype=np.float64,count=sx*sz)
        secy_u = np.fromfile(fp, dtype=np.float64,count=sx*sz)

        print secz_u
