#!/bin/bash

# Alignment using STAR

STAR --runThreadN 4 \
     --genomeDir /path/to/genome_index \
     --readFilesIn *_1_val_1.fq.gz *_2_val_2.fq.gz \
     --readFilesCommand zcat \
     --outFileNamePrefix ../results/