#!/usr/bin/env python

import re, sys

for fn in sys.argv[1:]:
    with open(fn,"r") as fp:
        con = fp.read()
        lines = con.split("\n")
        for i in range(len(lines)):
            if re.search("MFLOPS\/PEAK",lines[i]):
                print lines[i+2].split()[3], fn
                break

