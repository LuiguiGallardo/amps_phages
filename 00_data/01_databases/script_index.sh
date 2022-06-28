#!/bin/bash
# Title: script_index.sh
# Purpose: BWA index
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 08.06.2022

# Beginning of the script
# bwa index
bwa index GPD_sequences.fa

# bowtie2 index
bowtie2-build GPD_sequences.fa GPD_sequences_bowtie2 --threads 64 &

# smalt index
smalt index GPD_sequences_smalt GPD_sequences.fa

# Data sequences
paste <(grep \> GPD_sequences.fa | sed 's/>//g') <(grep -v length GPD_sequences.fa_length_complete.txt)  > data_GPD_sequences.txt

# The end!
