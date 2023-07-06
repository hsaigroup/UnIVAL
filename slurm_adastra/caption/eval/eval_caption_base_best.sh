#!/bin/bash
   
#SBATCH --job-name=eval_caption_stage_2_ofaplus_s1_onlylinearylinear
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=8
#SBATCH --threads-per-core=2
#SBATCH --gpu-bind=closest 
#SBATCH -C MI250
#SBATCH -A gda2204
#SBATCH --time=1:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --output=/lus/home/NAT/gda2204/mshukor/logs/slurm/eval_caption_stage_2_ofaplus_s1_onlylinearylinear.out
#SBATCH --exclusive
#SBATCH --mail-user=mustafa.shukor@isir.upmc.fr


cd /lus/home/NAT/gda2204/mshukor/code/ofa_ours/run_scripts
source /lus/home/NAT/gda2204/mshukor/.bashrc

conda activate main
 

rm core-python3*


srun -l -N 1 -n 1 -c 128 --gpus=8 bash caption/eval/eval_caption_base_best.sh

