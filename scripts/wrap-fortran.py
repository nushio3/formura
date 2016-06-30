#!/usr/bin/env python

import re,sys

limit=250

for l in sys.stdin:
    if len(l) < limit:
        sys.stdout.write(l)
    else:
        ws = l.split()
        line_end = " &"
        line_begin=""
        if re.search('^\!\$omp',ws[0]):
            line_begin = "!$omp& "
        elif re.search('^\!',ws[0]):
            line_begin = "! "
        buf = ""
        for w in ws:
            if len(buf+w)>=limit-3:
                sys.stdout.write(buf+line_end+"\n")
                buf=line_begin + w
            else:
                buf += " " + w
        if buf != "":
            sys.stdout.write(buf+"\n")
