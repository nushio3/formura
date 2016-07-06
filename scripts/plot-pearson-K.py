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


subprocess.call('mkdir -p images',shell=True)

t_ax = set()
x_ax = set()
y_ax = set()
z_ax = set()

secs_y = {}
secs_x = {}

sx=sy=sz=0


if sys.argv[1] == 'big':
    dtype_int32 = '>i4'
    dtype_float64= '>f8'
    #img_shrink=500.0
    #pylab.rcParams.update({'font.size': 48})
    #    img_shrink=300.0
    #    pylab.rcParams.update({'font.size': 72})
    img_shrink=30.0
    pylab.rcParams.update({'font.size': 12})

elif sys.argv[1] == 'little':
    dtype_int32 = '<i4'
    dtype_float64= '<f8'
    img_shrink=50.0
    pylab.rcParams.update({'font.size': 22})
else:
    print "USAGE: plot-pearson-bin.py ENDIAN [FILES...]"
    exit(0)


for fn in sys.argv[2:]:
    print fn
    with open(fn,'rb') as fp:
        gps = np.fromfile(fp, dtype=dtype_int32,count=6)
        print gps
        z,y,x,sz,sy,sx = gps
        t = 0
        t_ax.add(t)
        x_ax.add(x)
        y_ax.add(y)
        z_ax.add(z)


        secy_u = np.fromfile(fp, dtype=dtype_float64,count=sx*sy).reshape(sy,sx,1)
        tmp = np.fromfile(fp, dtype=dtype_float64,count=sx*sy)
        print tmp.shape
        secy_v = tmp.reshape(sy,sx,1)
        print secy_u
        key = (t,x,y,z)

        val = np.concatenate((secy_u,secy_v),axis=2)
        secs_y[key] = val

        # secx_u = np.fromfile(fp, dtype=dtype_float64,count=sy*sz).reshape(sy,sz,1)
        # secx_v = np.fromfile(fp, dtype=dtype_float64,count=sy*sz).reshape(sy,sz,1)
        # key = (t,x,y,z)
        # img_r = secx_u
        # img_g = secx_v
        # img_b = np.zeros((sy,sz,1))
        # val = np.concatenate((img_r,img_g,img_b),axis=2)
        # secs_x[key] = val


print max(x_ax),max(y_ax),max(z_ax)
print sx,sy,sz
canvas_size_x = max(x_ax)+sx
canvas_size_y = max(y_ax)+sy
canvas_size_z = max(z_ax)+sz



for t in t_ax:
    field=np.zeros((canvas_size_y, canvas_size_x, 2))
    for key,val in secs_y.iteritems():
        t1, x1, y1, z1 = key
        if t1 != t or z1 != 0:
            continue
        field[y1:y1+sy,x1:x1+sx,:] = val

    secy_u = field[:, :, 0:1]
    secy_v = field[:, :, 1:2]

    peak = np.maximum(0,(secy_v-0.3)/0.1)
    colony = secy_v*3.0
    aura = 0.3 * secy_v**0.2
    food = secy_u
    img_r = np.minimum(1.0, 0.7*peak + food)
    img_g = np.minimum(1.0, peak + colony)
    img_b = np.minimum(1.0, 0.7*peak + aura)

    canvas = np.concatenate((img_r,img_g,img_b),axis=2)

    c_field = ndimage.interpolation.zoom(secy_u[:, :, 0],0.25,order=3,mode='wrap')
    c_field = ndimage.filters.gaussian_filter(c_field,8.0,mode='wrap')
    c_field = ndimage.interpolation.zoom(c_field,4.0,order=3,mode='wrap')

    pylab.rcParams['figure.figsize'] = (canvas_size_x/img_shrink,canvas_size_y/img_shrink)
    pylab.clf()
    pylab.imshow(canvas)
    if sys.argv[1] == 'big':
        CS=pylab.contour(c_field,[0.5],colors='blue')
        #pylab.clabel(CS,fontsize=0)
        for c in CS.collections:
            pylab.setp(c,linewidth=4)
        if t ==262144:
            pylab.gca().add_patch(patches.Rectangle((10200,1450),2000,2000,fill=False,edgecolor='white',linewidth=8))
    pylab.title('t = {}'.format(t))
    pylab.savefig('images-K/{:06}.png'.format(t))
