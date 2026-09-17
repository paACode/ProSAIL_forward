#!/bin/bash -l
#SBATCH --nodes 1
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 4
#SBATCH --mem 16G
#SBATCH --time 08:00:00
#SBATCH --job-name prosail_fwd
#SBATCH --output slurm_%j.out
#SBATCH --mail-user ackermann.pascal@gmail.com
#SBATCH --mail-type BEGIN,END,FAIL
agrosoft load
module load python/3.12.12
#python3 -m venv .venv_slurm
source .venv_slurm/bin/activate
#pip install -r requirements.txt
python3 -u simulate_S2_spectra_soil.py