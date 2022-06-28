#!/bin/bash
# Title: script_bwa-mem_merged.sh
# Purpose: BWA MEM with samples merged in one file against GPD.
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 08.06.2022

# Beginning of the script
bwa mem -t 64 $1 $3 $4 | samtools view -@ 64 -b -h | samtools sort -@ 64 -o $5\_sorted.bam

bedtools bamtobed -i $5\_sorted.bam > $5\_sorted.bed

samtools flagstat $5\_sorted.bam > flagstat_$5\_sorted.txt

bed_coverage_filter.sh -i $5\_sorted.bed -o $5\_sorted -g $2 -c 0 &

# The end!
