#!/bin/bash

# Running
src/solvers/GMAA-ICE -h5 DT

# Plotting policies
pol_list=$(find ${HOME}/.madp/results/ -type f -name *_JPol)
for p in $pol_list; do
	python scripts/policy-plot.py $p
done