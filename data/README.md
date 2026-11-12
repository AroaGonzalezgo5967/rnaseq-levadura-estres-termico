# Carpeta data

- `raw/`: archivos FASTQ originales. No se suben a GitHub por su tamaño (ver `.gitignore`).
- `processed/`: lecturas limpias tras el trimming.
- `reference/`: genoma y anotación de referencia de *S. cerevisiae*.
- `metadata/`: `samples.tsv`, tabla de muestras y su condición (control o calor).

## Genoma de referencia

- **Organismo:** Saccharomyces cerevisiae
- **Ensamblaje:** R64-1-1
- **Fuente:** [Ensembl](https://www.ensembl.org/Saccharomyces_cerevisiae/Info/Index)

Archivos necesarios, que se ubicarán en `data/reference/`:
- `genome.fa`: secuencia del genoma de referencia.
- `annotation.gtf`: anotación de los genes.
