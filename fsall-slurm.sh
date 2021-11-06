#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
<<<<<<< HEAD
#SBATCH -J "fsall"   # job name
=======
#SBATCH -J "fsall-slurm"   # job name
>>>>>>> 073d4ff0227f98d4247d14dae15a3f40856c0b42

## /SBATCH -p general # partition (queue)
#SBATCH -o fsall-slurm.%N.%j.out # STDOUT
#SBATCH -e fsall-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
<<<<<<< HEAD
import time; \
import DataProcessingTools as DPT; \
lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); \
lfall.save(); \
hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); \
hfall.save();
print(time.localtime());"
=======
	import time; \
	import DataProcessingTools as DPT; \
	lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); \
	lfall.save(); \
	hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); \
	hfall.save();
	print(time.localtime());"
>>>>>>> 073d4ff0227f98d4247d14dae15a3f40856c0b42

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:721468676325:awsnotify --message "FSJobDone"
