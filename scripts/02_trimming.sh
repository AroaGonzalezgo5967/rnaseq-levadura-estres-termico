#!/bin/bash
# 02_trimming.sh - Elimina bases de baja calidad con Trimmomatic
# Entrada: data/raw/*.fastq.gz
# Salida:  data/processed/<muestra>_trimmed.fastq.gz
# Uso:     bash scripts/02_trimming.sh

set -euo pipefail
mkdir -p data/processed
for f in data/raw/*.fastq.gz; do
  muestra=$(basename "$f" .fastq.gz)
  trimmomatic SE -threads 4 "$f" "data/processed/${muestra}_trimmed.fastq.gz" SLIDINGWINDOW:4:20 MINLEN:36
done
