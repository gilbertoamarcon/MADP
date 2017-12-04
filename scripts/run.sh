#!/bin/bash

solver=src/solvers/GMAA-ICE-CUSTOM-HEUR
# solver=src/solvers/DICEPS

# Running
for h in {2..10}; do
	echo "Horizon $h..."
	# $solver -q -h $h ${HOME}/.madp/problems/recycling.dpomdp
	# $solver -q -h $h FFG
	$solver -q -h $h ${HOME}/.madp/problems/FFG343.pgmx
done;

# Plotting policies
echo "Policy Plot..."
pol_list=$(find ${HOME}/.madp/results/ -type f -name *_JPol)
for p in $pol_list; do
	python scripts/policy-plot.py $p
done