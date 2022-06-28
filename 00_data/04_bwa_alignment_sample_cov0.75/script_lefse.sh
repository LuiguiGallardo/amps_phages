#!/bin/bash
# Title: script_lefse.sh
# Purpose: LEfSe analysis
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 27.06.2022

# Beginning of the script
lefse_format_input.py allsamples_phages_cov0.75_relab_lefse.txt allsamples_phages_cov0.75_relab_lefse.in -u 1 -c 2 -o 1000000

lefse_run.py allsamples_phages_cov0.75_relab_lefse.in allsamples_phages_cov0.75_relab_lefse.res -l 0

lefse_plot_res.py allsamples_phages_cov0.75_relab_lefse.res allsamples_phages_cov0.75_relab_lefse.svg --format svg

# The end!
