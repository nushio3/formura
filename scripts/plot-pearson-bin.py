#!/usr/bin/env python
import re
import sys
import subprocess
import numpy as np
import pylab

subprocess.call('mkdir -p images',shell=True)

t_ax = set()
x_ax = set()
y_ax = set()
z_ax = set()

secs_y = {}
secs_x = {}

sx=sy=sz=0

for fn in sys.argv[1:]:
    print fn
    m = re.search('monitor-([\d]+)-([\d]+)',fn)
    t = int(m.group(1))
    with open(fn,'rb') as fp:
        gps = np.fromfile(fp, dtype=np.int32,count=6)
        print gps
        x,y,z,sx,sy,sz = gps

        t_ax.add(t)
        x_ax.add(x)
        y_ax.add(y)
        z_ax.add(z)


        secy_u = np.fromfile(fp, dtype=np.float64,count=sx*sz).reshape(sx,sz,1)
        secy_v = np.fromfile(fp, dtype=np.float64,count=sx*sz).reshape(sx,sz,1)
        print secy_u
        key = (t,x,y,z)
        img_r = secy_u
        img_g = secy_v
        img_b = np.zeros((sx,sz,1))
        val = np.concatenate((img_r,img_g,img_b),axis=2)
        secs_y[key] = val

        secx_u = np.fromfile(fp, dtype=np.float64,count=sy*sz).reshape(sy,sz,1)
        secx_v = np.fromfile(fp, dtype=np.float64,count=sy*sz).reshape(sy,sz,1)
        key = (t,x,y,z)
        img_r = secx_u
        img_g = secx_v
        img_b = np.zeros((sy,sz,1))
        val = np.concatenate((img_r,img_g,img_b),axis=2)
        secs_x[key] = val


print max(x_ax),max(y_ax),max(z_ax)
print sx,sy,sz
canvas_size_x = max(x_ax)+sx
canvas_size_y = max(y_ax)+sy
canvas_size_z = max(z_ax)+sz

for t in t_ax:
    canvas=np.zeros((canvas_size_x, canvas_size_z, 3))
    for key,val in secs_y.iteritems():
        t1, x1, y1, z1 = key
        if t1 != t or y1 != 0:
            continue
        canvas[x1:x1+sx,z1:z1+sz,:] = val

    pylab.rcParams['figure.figsize'] = (canvas_size_x/50.0,canvas_size_z/50.0)
    pylab.clf()
    pylab.imshow(canvas)
    pylab.savefig('images/{:06}.png'.format(t))
