#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"

echo "==>" rplpl-slurm*.out "<=="
head rplpl-slurm*.out | grep "time.struct_time"

echo

echo "==>" rs1-slurm*.out "<=="
head rs1-slurm*.out | grep "time.struct_time"

echo

echo "==>" rs2-slurm*.out "<=="
head rs2-slurm*.out | grep "time.struct_time"

echo

echo "==>" rs3-slurm*.out "<=="
head rs3-slurm*.out | grep "time.struct_time"

echo

echo "==>" rs4-slurm*.out "<=="
head rs4-slurm*.out | grep "time.struct_time"

echo "End Times"

echo "==>" rplpl-slurm*.out "<=="
tail rplpl-slurm*.out | grep -A 4 "time.struct_time"

echo

echo "==>" rs1-slurm*.out "<=="
tail rs1-slurm*.out | grep -A 4 "time.struct_time"

echo

echo "==>" rs2-slurm*.out "<=="
tail rs2-slurm*.out | grep -A 4 "time.struct_time"

echo

echo "==>" rs3-slurm*.out "<=="
tail rs3-slurm*.out | grep -A 4 "time.struct_time"

echo

echo "==>" rs4-slurm*.out "<=="
tail rs4-slurm*.out | grep -A 4 "time.struct_time"






















































































































































