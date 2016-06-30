#!/usr/bin/env python

import re,sys

for l in sys.stdin:
    if len(l) < 250:
        sys.stdout.write(l)
    else:
        ws = l.split()
        line_end = "&"
        line_begin=""
         if ws[0][0] != '!'
