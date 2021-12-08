#!/bin/bash
#SBATCH --job-name="rfm_GROMACS_EESSI___HECBioSim_Crambin____204107_0__0_001__cpu___singlenode___1____example_system_cpu____builtin____GROMACS_2021_foss_2021a_PLUMED_2_7_2___job"
#SBATCH --ntasks=128
#SBATCH --ntasks-per-node=128
#SBATCH --cpus-per-task=1
#SBATCH --output=rfm_GROMACS_EESSI___HECBioSim_Crambin____204107_0__0_001__cpu___singlenode___1____example_system_cpu____builtin____GROMACS_2021_foss_2021a_PLUMED_2_7_2___job.out
#SBATCH --error=rfm_GROMACS_EESSI___HECBioSim_Crambin____204107_0__0_001__cpu___singlenode___1____example_system_cpu____builtin____GROMACS_2021_foss_2021a_PLUMED_2_7_2___job.err
#SBATCH -p thin
module load GROMACS/2021-foss-2021a-PLUMED-2.7.2
curl -LJO https://github.com/victorusu/GROMACS_Benchmark_Suite/raw/1.0.0/HECBioSim/Crambin/benchmark.tpr
srun gmx_mpi mdrun -nb cpu -s benchmark.tpr