
# RNA-seq Analysis Project
MSc Bioinformatics – University of Nottingham

## Overview

This project presents a complete RNA-seq analysis workflow, including:

- Quality control (FastQC)
- Read trimming (Trim Galore)
- Alignment to reference genome (STAR)
- Gene quantification (HTSeq)
- Differential gene expression analysis (DESeq2)
- Functional enrichment analysis

Two datasets were analysed:

- Trypanosoma dataset: comparison between Fat and Blood samples
- Human dataset: comparison between Male and Female samples

---

## Workflow

The analysis was performed in the following steps:

1. Quality control of raw reads using FastQC  
2. Adapter trimming and quality filtering using Trim Galore  
3. Alignment of reads to the reference genome using STAR  
4. Counting reads mapped to genes using HTSeq  
5. Differential expression analysis using DESeq2  
6. Visualisation and downstream analysis (PCA, heatmaps, volcano plots)

---

## Scripts

All analysis scripts are located in the `scripts/` directory:

- `qc_fastqc.sh` → runs FastQC for quality control  
- `trim_galore.sh` → trims adapters and low-quality reads  
- `star_alignment.sh` → aligns reads to reference genome  
- `htseq_count.sh` → counts reads per gene  
- `deseq2_analysis.R` → performs differential expression analysis  

Each script represents one stage of the RNA-seq pipeline.

---

## Data

- Raw sequencing data (FASTQ files) were used as input  
- Reference genome and annotation files were used for alignment and counting  

(Note: Raw data are not included in this repository due to size limitations)

---

## Results

Results are stored in the `figures/` directory and include:

- PCA plots (sample clustering)
- Heatmaps (expression patterns)
- Volcano plots (differential expression)
- MA plots
- Functional enrichment plots (GO analysis)

---

## Reproducibility

To reproduce this analysis:

## Reproducibility

To reproduce this analysis:

1. Run quality control:
   bash scripts/qc_fastqc.sh

2. Trim reads:
   bash scripts/trim_galore.sh

3. Align reads:
   bash scripts/star_alignment.sh

4. Count reads:
   bash scripts/htseq_count.sh

5. Run differential expression analysis:
   Rscript scripts/deseq2_analysis.R

---

## Tools Used

- FastQC  
- Trim Galore  
- STAR  
- HTSeq  
- DESeq2  

---

## Authors

Sahar Naeemi (mbxsn4@nottingham.ac.uk)  
Christopher Janschke (mbxcj2@nottingham.ac.uk)  
Mengchan Liu (alyml51@nottingham.ac.uk)

MSc Bioinformatics — University of Nottingham
