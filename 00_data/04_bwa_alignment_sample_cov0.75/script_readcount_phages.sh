#!/bin/bash
# Title: script_readcount_phages.sh
# Purpose: Readcount of phages per sample; creation of matrix with all samples
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 27.06.2022

# Beginning of the script
for s in $(cat ../00_raw_data/samples.txt) ; do printf "#\n#phage_id\t"$s"\n" > $s\_phages.txt ; paste <(cat $s\_sorted.bed | cut -f 1| uniq -c | sed 's/^  *//g'| cut -f 2 -d ' ') <(cat $s\_sorted.bed | cut -f 1| uniq -c | sed 's/^  *//g'| cut -f 1 -d ' ') >> $s\_phages.txt ; done

for s in $(cat ../00_raw_data/samples.txt) ; do biom convert -i $s\_phages.txt -o $s\_phages.biom --to-hdf5 --table-type="OTU table" ; done

merge_otu_tables.py -i H-10_phages.biom,H-118_phages.biom,H-119_phages.biom,H-120_phages.biom,H-124_phages.biom,H-147_phages.biom,H-161_phages.biom,H-169_phages.biom,H-193_phages.biom,H-314_phages.biom,O-121_phages.biom,O-122_phages.biom,O-123_phages.biom,O-152_phages.biom,O-39_phages.biom,O-418_phages.biom,O-420_phages.biom,O-434_phages.biom,O-445_phages.biom,O-90_phages.biom,OMC-124_phages.biom,OMC-125_phages.biom,OMC-126_phages.biom,OMC-288_phages.biom,OMC-446_phages.biom,OMC-55_phages.biom,OMC-64_phages.biom,OMC-87_phages.biom -o allsamples_phages_cov0.75.biom

biom convert -i allsamples_phages_cov0.75.biom -o allsamples_phages_cov0.75.tsv --to-tsv

# The end!
