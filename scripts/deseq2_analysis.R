# Differential expression analysis using DESeq2

library(DESeq2)

counts <- read.table("../data/final_counts_matrix.txt",
                     header = TRUE,
                     row.names = 1,
                     sep = "\t")

counts <- counts[-c(1:4), ]

condition <- factor(c(
  "Female","Female","Female","Female",
  "Male",
  "Female","Female","Female","Female",
  "Male","Male","Male","Male",
  "Female",
  "Male"
))

colData <- data.frame(row.names = colnames(counts),
                      condition = condition)

dds <- DESeqDataSetFromMatrix(countData = counts,
                              colData = colData,
                              design = ~ condition)

dds <- DESeq(dds)
res <- results(dds)

write.csv(as.data.frame(res), "../results/deseq2_results.csv")

plotMA(res, ylim = c(-5,5))