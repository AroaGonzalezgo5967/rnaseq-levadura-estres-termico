#!/bin/bash
# 04_counts.sh - Conteo de lecturas con featureCounts
# Entrada: results/alignment/*.bam
# Salida: results/counts/counts.txt
# Uso: bash scripts/04_counts.sh

set -euo pipefail
mkdir -p results/counts

featureCounts -T 4 -a data/reference/annotation.gtf \
#!/bin/bash
# 04_counts.sh - Conteo de lecturas con featureCounts
# Entrada: results/alignment/*.bam
# Salida: results/counts/counts.txt
# Uso: bash scripts/04_counts.sh

set -euo pipefail
mkdir -p results/counts

featureCounts -T 4 -a data/reference/annotation.gtf \
  -o results/counts/counts.txt results/alignment/*.bam

