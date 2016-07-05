#!/usr/bin/env python
import re
import sys
import subprocess
import numpy as np
from scipy import ndimage
import matplotlib
matplotlib.use('Agg')
import matplotlib.patches as patches
import pylab

if len(sys.argv) < 3:
    print "USAGE: {} ENDIAN [FILES...]".format(sys.argv[0])
    exit(2)


if sys.argv[1] == 'big':
    dtype_int32 = '>i4'
    dtype_float64= '>f8'

elif sys.argv[1] == 'little':
    dtype_int32 = '<i4'
    dtype_float64= '<f8'

with open(sys.argv[2], 'rb') as fp:
    gps = np.fromfile(fp, dtype=dtype_int32,count=2)
    sx,sy = gps

    screen = np.fromfile(fp, dtype=dtype_float64,count=sx*sy).reshape(sy,sx)

pylab.rcParams['figure.figsize'] = (sx / 100.0, sy/100.0)
pylab.clf()
pylab.imshow(screen)
pylab.savefig('test.png')
