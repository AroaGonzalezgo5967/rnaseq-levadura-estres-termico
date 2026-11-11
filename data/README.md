# Carpeta data
printf '# Carpeta data\n\n- `raw/`: archivos FASTQ originales. No se suben a GitHub por su tamaño (ver `.gitignore`).\n- `processed/`: lecturas limpias tras el trimming.\n- `reference/`: genoma y anotación de referencia de *S. cerevisiae*.\n- `metadata/`: `samples.tsv`, tabla de muestras y su condición (control o calor).\n' > data/README.md
cat data/README.md


## Genoma de referencia

Organismo: Saccharomyces cerevisiae.
Ensamblaje: R64-1-1.
Fuente de referencia: Ensembl.

https://www.ensembl.org/Saccharomyces_cerevisiae/Info/Index

Archivos necesarios:
- genome.fa: secuencia del genoma de referencia.
- annotation.gtf: anotacion de los genes.

Los archivos se ubicaran en data/reference/.
