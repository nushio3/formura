#!/usr/bin/env python
import pylab

rU = 1.5, rV = 0.5, rE = 0.2
dt = 0.01

U = 1.0
V = 0.01

us = []
vs = []

t = 0.0

while t < 10.0:
    dU_dt = -rE * U * V + rU * U * (1-U)
    dV_dt =  rE * U * V - rV * V
    U += dt * dU_dt
    V += dt * dV_dt
    us.append(U)
    vs.append(V)

pylab.rcParams['figure.figsize'] = (10.0, 10.0)
pylab.clf()
pylab.plot(us,vs)
pylab.savefig("lv.png")
