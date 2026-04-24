
# RNA-seq Analysis Project
MSc Bioinformatics – University of Nottingham

## Overview
This project presents a complete RNA-seq analysis workflow, from raw sequencing data to biological interpretation.

The pipeline includes:
- Quality control (FastQC)
- Read trimming (Trim Galore)
- Alignment to reference genome (STAR)
- Gene quantification (HTSeq)
- Differential gene expression analysis (DESeq2)
- Functional enrichment analysis

Two datasets were analysed:
- Trypanosoma dataset: comparison between Fat and Blood samples
- Human dataset: comparison between Male and Female samples

The aim of this project is to identify differentially expressed genes and interpret their biological significance using downstream analyses such as PCA, heatmaps, volcano plots, and GO enrichment.

## Repository Structure

RNAseq-Rotation2/
```
├── data/         # Processed data (counts matrix and metadata used for analysis)
├── scripts/      # Analysis scripts (QC, trimming, alignment, counting, DESeq2)
├── results/      # Output files (counts, differential expression results)
├── figures/      # Plots (PCA, heatmaps, volcano, GO)
├── environment/  # Environment/configuration files
└── README.md     # Project description

```

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

- Processed count matrices and metadata are included in the `data/` directory
- Raw sequencing data (FASTQ files) were used for analysis but are not included due to size limitations
- Reference genome and annotation files were used for alignment and counting



---

## Environment

This analysis was performed using the following tools and software:

- FastQC
- Trim Galore
- STAR
- HTSeq
- R (DESeq2 package via Bioconductor)

Recommended setup:

- R version ≥ 4.0
- DESeq2 package installed via Bioconductor

Example installation in R:

```r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("DESeq2")
```


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

1. Run quality control: bash scripts/qc_fastqc.sh
2. Trim reads: bash scripts/trim_galore.sh
3. Align reads: bash scripts/star_alignment.sh
4. Count reads: bash scripts/htseq_count.sh
5. Run differential expression analysis: Rscript scripts/deseq2_analysis.R

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
