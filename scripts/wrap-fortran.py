#!/usr/bin/env python

import re,sys

limit=250

for fn in sys.argv[1:]:
    with open(fn,"r") as fp:
        con = fp.read()

    ret = ""
    for l in con.split("\n"):
        if len(l) < limit:
            ret += l + "\n"
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
                    ret += buf+line_end+"\n"
                    buf=line_begin + w
                else:
                    buf += " " + w
            if buf != "":
                ret += buf+"\n"
    with open(fn,"w") as fp:
        fp.write(ret)
