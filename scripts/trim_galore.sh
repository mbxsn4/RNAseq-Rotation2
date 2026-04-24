#!/bin/bash

# Adapter and quality trimming using Trim Galore

trim_galore --paired *_1.fastq.gz *_2.fastq.gz -o ../results/