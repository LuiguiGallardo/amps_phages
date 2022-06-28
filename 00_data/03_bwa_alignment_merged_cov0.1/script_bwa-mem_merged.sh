#!/bin/bash
# Title: script_bwa-mem_merged.sh
# Purpose: BWA MEM with samples merged in one file against GPD.
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 08.06.2022

# Beginning of the script
bwa mem -t 64 GPD_sequences_cov0.1.fa merged_R1.fastq.gz merged_R2.fastq.gz | samtools view -@ 64 -b -h | samtools sort -@ 64 -o merged_bwa_sorted.bam

bedtools bamtobed -i merged_bwa_sorted.bam > merged_bwa_sorted.bed

samtools flagstat merged_bwa_sorted.bam > flagstat_merged_bwa_sorted.txt

bed_coverage_filter.sh -i merged_bwa_sorted.bed -o merged_bwa_sorted -g ../01_databases/data_GPD_sequences.txt
# The end!
