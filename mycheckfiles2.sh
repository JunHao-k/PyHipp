#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"

echo "==>" rplpl-slurm*.out "<=="
head rplpl-slurm*.out | grep "time.struct_time"

echo

echo "==>" rplspl-slurm*.out "<=="
head rplspl-slurm*.out | grep "time.struct_time"

echo "End Times"

echo "==>" rplpl-slurm*.out "<=="
tail rplpl-slurm*.out | grep -A 4 "time.struct_time"

echo

echo "==>" rplspl-slurm*.out "<=="
tail rplspl-slurm*.out | grep -A 4 "time.struct_time"









































