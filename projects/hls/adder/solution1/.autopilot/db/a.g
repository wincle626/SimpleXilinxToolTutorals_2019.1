#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/udrc/adder/solution1/.autopilot/db/a.g.bc ${1+"$@"}
