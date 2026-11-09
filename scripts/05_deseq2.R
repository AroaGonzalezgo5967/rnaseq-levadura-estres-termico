# 05_deseq2.R - Expresion diferencial calor vs control con DESeq2
# Entrada: results/counts/counts.txt, data/metadata/samples.tsv
# Salida:  results/deg/deseq2_resultados.csv
# Uso:     Rscript scripts/05_deseq2.R
library(DESeq2)

# Matriz de conteos (featureCounts añade 5 columnas de anotacion)
conteos <- read.table("results/counts/counts.txt", header = TRUE,
                      row.names = 1, skip = 1, check.names = FALSE)
conteos <- conteos[, 6:ncol(conteos)]
colnames(conteos) <- sub("\\.bam$", "", basename(colnames(conteos)))

# Metadatos de las muestras
meta <- read.table("data/metadata/samples.tsv", header = TRUE, row.names = 1)
meta$condition <- factor(meta$condition, levels = c("control", "calor"))
conteos <- conteos[, rownames(meta)]

# Analisis
dds <- DESeqDataSetFromMatrix(countData = conteos, colData = meta,
                              design = ~ condition)
dds <- DESeq(dds)
res <- results(dds, contrast = c("condition", "calor", "control"))
res <- res[order(res$padj), ]
dir.create("results/deg", showWarnings = FALSE)
write.csv(as.data.frame(res), "results/deg/deseq2_resultados.csv")
