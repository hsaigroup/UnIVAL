#!/bin/bash
   
#SBATCH --job-name=snli_ve_ofaplus_base_pretrain_s2_hsep1_initavg_caprefsnlivqa
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=8
#SBATCH --threads-per-core=2
#SBATCH --gpu-bind=closest 
####SBATCH --nodelist=x1004c4s2b0n0
#SBATCH --time=24:00:00
#SBATCH -C MI250
#SBATCH -A gda2204
#SBATCH --mail-type=END,FAIL
#SBATCH --output=/lus/home/NAT/gda2204/mshukor/logs/slurm/snli_ve_ofaplus_base_pretrain_s2_hsep1_initavg_caprefsnlivqa.out
#SBATCH --exclusive
#SBATCH --mail-user=mustafa.shukor@isir.upmc.fr


cd /lus/home/NAT/gda2204/mshukor/code/ofa_ours/run_scripts
source /lus/home/NAT/gda2204/mshukor/.bashrc

conda activate main
 

rm core-python3*


srun -l -N 1 -n 1 -c 128 --gpus=8 bash averaging/fusing/scaling_best/snli_ve_ofaplus_base_pretrain_s2_hsep1_initavg_caprefsnlivqa.sh

