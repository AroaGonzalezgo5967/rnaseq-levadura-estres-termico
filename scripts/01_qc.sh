#!/bin/bash
# 01_qc.sh - Control de calidad de las lecturas crudas con FastQC
# Entrada: data/raw/*.fastq.gz
# Salida:  informes HTML en results/qc/
# Uso:     bash scripts/01_qc.sh

set -euo pipefail
mkdir -p results/qc
fastqc data/raw/*.fastq.gz -o results/qc -t 4
