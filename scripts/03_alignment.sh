#!/bin/bash
# 03_alignment.sh - Alineamiento con HISAT2
# Entrada: data/processed/*_trimmed.fastq.gz
# Salida: results/alignment/*.bam
# Uso: bash scripts/03_alignment.sh

set -euo pipefail
mkdir -p results/alignment

hisat2-build data/reference/genome.fa data/reference/genome_index

for f in data/processed/*_trimmed.fastq.gz; do
  muestra=$(basename "$f" _trimmed.fastq.gz)
  hisat2 -p 4 -x data/reference/genome_index -U "$f" \
    | samtools sort -o "results/alignment/${muestra}.bam"
  samtools index "results/alignment/${muestra}.bam"
done


