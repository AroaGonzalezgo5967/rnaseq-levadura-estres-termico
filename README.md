# rnaseq-levadura-estres-termico

Pipeline de RNA-Seq para identificar genes diferencialmente expresados en *Saccharomyces cerevisiae* bajo estrés térmico (37 °C) frente a control (30 °C).

## Objetivos

- Evaluar la calidad de las lecturas de secuenciación.
- Alinear las lecturas al genoma de referencia y cuantificar la expresión por gen.
- Identificar genes diferencialmente expresados con DESeq2.

## Diseño experimental

6 muestras: 3 réplicas control (30 °C) y 3 réplicas con estrés térmico (37 °C). La tabla de muestras está en `data/metadata/samples.tsv`.

## Estructura del repositorio

| Carpeta | Contenido |
|---|---|
| `data/` | Datos crudos, procesados, referencia y metadatos |
| `scripts/` | Scripts del pipeline, numerados en orden de ejecución |
| `results/` | Salidas: QC, alineamientos, conteos y genes diferencialmente expresados |
| `docs/` | Documentación detallada del flujo de trabajo |

## Requisitos e instalación

Se necesita [conda](https://docs.conda.io/). Todas las herramientas se instalan con el entorno del proyecto:

```bash
git clone https://github.com/AroaGonzalezgo5967/rnaseq-levadura-estres-termico.git
cd rnaseq-levadura-estres-termico
conda env create -f environment.yml
conda activate rnaseq-levadura
```

## Uso

1. Coloca los FASTQ en `data/raw/` y el genoma (`genome.fa`) y la anotación (`annotation.gtf`) en `data/reference/`.
2. Ejecuta los scripts en orden:

```bash
bash scripts/01_qc.sh
bash scripts/02_trimming.sh
bash scripts/03_alignment.sh
bash scripts/04_counts.sh
Rscript scripts/05_deseq2.R
```

3. El resultado final queda en `results/deg/deseq2_resultados.csv`.

## Flujo de trabajo

FASTQ → FastQC → Trimmomatic → HISAT2 → featureCounts → DESeq2

Más detalle en [docs/workflow.md](docs/workflow.md).

## Autores

- AroaGonzalezgo5967 – configuración del repositorio
- MaribelEsquivel – estructura y metadatos
- danielgonzalezgarcia978 – control de calidad
- carmengarijo10 – alineamiento y conteo
- RocioEstMig – expresión diferencial
- DVaraCiruelos – documentación

## Licencia

Distribuido bajo licencia MIT. Ver [LICENSE](LICENSE).
