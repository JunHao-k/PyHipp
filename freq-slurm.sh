#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
<<<<<<< HEAD
#SBATCH -J "freq_slurm"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o freq-slurm.%N.%j.out # STDOUT
#SBATCH -e freq-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import time; \
pyh.FreqSpectrum(saveLevel=1); \
pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1);
print(time.localtime());"


=======
#SBATCH -J "rpllfp"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rpllfp-slurm.%N.%j.out # STDOUT
#SBATCH -e rpllfp-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
	import time; \
	pyh.FreqSpectrum(saveLevel=1); \
	pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1);
	print(time.localtime());"
>>>>>>> 073d4ff0227f98d4247d14dae15a3f40856c0b42


