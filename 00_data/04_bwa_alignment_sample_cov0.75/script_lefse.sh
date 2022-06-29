#!/bin/bash
# Title: script_lefse.sh
# Purpose: LEfSe analysis
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 27.06.2022

# Beginning of the script
# Relative abundance
lefse_format_input.py allsamples_phages_cov0.75_relab_lefse.txt allsamples_phages_cov0.75_relab_lefse.in -u 1 -c 2 -o 1000000

lefse_run.py allsamples_phages_cov0.75_relab_lefse.in allsamples_phages_cov0.75_relab_lefse.res -l 0

lefse_plot_res.py allsamples_phages_cov0.75_relab_lefse.res allsamples_phages_cov0.75_relab_lefse.svg --format svg

# RPKM
lefse_format_input.py allsamples_phages_cov0.75_rpkm_lefse.tsv allsamples_phages_cov0.75_rpkm_lefse.in -u 1 -c 2 -o 1000000

lefse_run.py allsamples_phages_cov0.75_rpkm_lefse.in allsamples_phages_cov0.75_rpkm_lefse.res -l 0

lefse_plot_res.py allsamples_phages_cov0.75_rpkm_lefse.res allsamples_phages_cov0.75_rpkm_lefse.svg --format svg

# RPKM groups
lefse_format_input.py allsamples_phages_cov0.75_rpkm_lefse_nw_ob.tsv allsamples_phages_cov0.75_rpkm_lefse_nw_ob.in -u 1 -c 2 -o 1000000

lefse_run.py allsamples_phages_cov0.75_rpkm_lefse_nw_ob.in allsamples_phages_cov0.75_rpkm_lefse_nw_ob.res -l 0

lefse_plot_res.py allsamples_phages_cov0.75_rpkm_lefse_nw_ob.res allsamples_phages_cov0.75_rpkm_lefse_nw_ob.svg --format svg


lefse_format_input.py allsamples_phages_cov0.75_rpkm_lefse_nw_omc.tsv allsamples_phages_cov0.75_rpkm_lefse_nw_omc.in -u 1 -c 2 -o 1000000

lefse_run.py allsamples_phages_cov0.75_rpkm_lefse_nw_omc.in allsamples_phages_cov0.75_rpkm_lefse_nw_omc.res -l 0

lefse_plot_res.py allsamples_phages_cov0.75_rpkm_lefse_nw_omc.res allsamples_phages_cov0.75_rpkm_lefse_nw_omc.svg --format svg


lefse_format_input.py allsamples_phages_cov0.75_rpkm_lefse_ob_omc.tsv allsamples_phages_cov0.75_rpkm_lefse_ob_omc.in -u 1 -c 2 -o 1000000

lefse_run.py allsamples_phages_cov0.75_rpkm_lefse_ob_omc.in allsamples_phages_cov0.75_rpkm_lefse_ob_omc.res -l 0

lefse_plot_res.py allsamples_phages_cov0.75_rpkm_lefse_ob_omc.res allsamples_phages_cov0.75_rpkm_lefse_ob_omc.svg --format svg

# The end!

