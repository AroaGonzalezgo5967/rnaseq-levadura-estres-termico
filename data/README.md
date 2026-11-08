# Carpeta data
printf '# Carpeta data\n\n- `raw/`: archivos FASTQ originales. No se suben a GitHub por su tamaño (ver `.gitignore`).\n- `processed/`: lecturas limpias tras el trimming.\n- `reference/`: genoma y anotación de referencia de *S. cerevisiae*.\n- `metadata/`: `samples.tsv`, tabla de muestras y su condición (control o calor).\n' > data/README.md
cat data/README.md
