#!/usr/bin/env python
import pylab

mu = 0.1

dt = 0.01

U = 1.0
V = 1.0

us = []
vs = []

t = 0.0

while t < 1000.0:
    dU_dt = V
    dV_dt = mu*(1-U*U)*V - U
    U += dt * dU_dt
    V += dt * dV_dt
    us.append(U)
    vs.append(V)
    t += dt

pylab.rcParams['figure.figsize'] = (10.0, 10.0)
pylab.clf()
pylab.plot(us,vs)
pylab.savefig("lv.png")
