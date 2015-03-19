#!/bin/bash
cd programming-tasks/bash
ls
python -c "import os, sys; [os.rename(a, a.capitalize()) for a in sys.argv[1:]]" zalora-*
ls
head Zalora-*
for x in Zalora-*; do tr 'a-z' 'A-Z' <$x >${x}new; mv ${x}new $x; done
head Zalora-*
for x in Zalora-*; do tr -d '.' <$x >${x}new; mv ${x}new $x; done
head Zalora-*
