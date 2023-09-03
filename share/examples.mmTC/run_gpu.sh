#!/bin/bash -l 
#SBATCH -n 2
#SBATCH --partition=gpu
#SBATCH --account=project_2008298
#SBATCH --gres=gpu:v100:1
#SBATCH -t 24:10:00
#SBATCH -J gpu_job
#SBATCH -o gpu_job.out.%j
#SBATCH -e gpu_job.err.%j
#SBATCH --mem=80G
#SBATCH --ntasks-per-node=2
module purge
module load intel-oneapi-mkl/2022.1.0 intel-oneapi-compilers/2022.1.0 intel-oneapi-mpi/2021
export GAUSS_EXE=doqedcis.qmmm
export GAUSS_DIR=/users/groenhof/Puhti-scripts
export DEVEL_DIR=/users/ggroenh
#export LD_LIBRARY_PATH=/usr/local/software/TeraChem/1.93P/lib:$LD_LIBRARY_PATH
#export TeraChem=/usr/local/software/TeraChem/1.93P
export TeraChem=/projappl/project_2001565/TeraChem/
export SEED=$RANDOM
#export SEED=26722
export WORK_DIR=`pwd`
export TMPDIR=/tmp/ggroenh
#export TMPDIR=/tmp/admin
export TMP_DIR=`pwd`

srun -n 2 /projappl/project_2008298/Gromacs_versions/gromacs-4.5.3-QEDMM.14b/src/kernel/mdrun -multi 2 > output.out
