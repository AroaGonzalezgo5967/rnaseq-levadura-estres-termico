# Flujo de trabajo

## 1. Control de calidad (FastQC)
`scripts/01_qc.sh` evalúa la calidad de las lecturas crudas con FastQC y genera informes HTML en `results/qc/`.

## 2. Limpieza de lecturas (Trimmomatic)
`scripts/02_trimming.sh` elimina las bases de baja calidad y las lecturas demasiado cortas con Trimmomatic. Genera los archivos `*_trimmed.fastq.gz` en `data/processed/`.

## 3. Alineamiento (HISAT2)
`scripts/03_alignment.sh` alinea las lecturas limpias al genoma de referencia de *S. cerevisiae* con HISAT2 y genera archivos BAM ordenados e indexados en `results/alignment/`.

## 4. Conteo de lecturas (featureCounts)
`scripts/04_counts.sh` cuenta cuántas lecturas caen en cada gen con featureCounts y genera la matriz `results/counts/counts.txt`.

## 5. Expresión diferencial (DESeq2)
`scripts/05_deseq2.R` compara las muestras sometidas a calor con las de control usando DESeq2 y genera la tabla `results/deg/deseq2_resultados.csv`.
