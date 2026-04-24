#!/bin/bash

# Generate gene-level counts using HTSeq-count

for bam in ../results/*.bam
do
    sample=$(basename "$bam" .bam)

    htseq-count \
        -f bam \
        -r pos \
        -s no \
        -t exon \
        -i gene_id \
        "$bam" \
        /path/to/annotation.gtf \
        > ../results/${sample}.counts.txt
done