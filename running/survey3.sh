#! /bin/bash
#
# Typical use
#      bash survey3.sh > survey3.run
#      parallel -j 4 < survey3.run
#

PAR1="RGAPD1"
PAR2="SW"
PAR3="RMIND(2)"

n=1
for p1 in 0.1 0.2 0.3; do
    for p2 in 0.2 0.3; do
	for p3 in 0.4 0.6; do
	    rundir=run_${p1}_${p2}_${p3}
	    rundir=run$n
            echo ./run_hochunk3d $rundir \"$PAR1=$p1\" \"$PAR2=$p2\" \"$PAR3=$p3\"
	    ((n++))
	done
    done
done
