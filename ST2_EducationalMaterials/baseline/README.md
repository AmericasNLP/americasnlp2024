# Baseline System

The baseline system is based on [edit trees](https://doras.dcu.ie/550/1/GrzegorzPhDFinal.pdf) ([inspiration](https://aclanthology.org/P16-2090.pdf)).

## Installation

```
pip install -U spacy sacrebleu
```

## Running

```
python baseline_edit_trees.py ../data/bribri-train.tsv ../data/bribri-dev.tsv bribri-dev-prediction.tsv
```

## Evaluation

```
python evaluate.py bribri-dev-prediction.tsv
```

## Results

| Language |  BLEU | ChrF |
-----------|-------|-------
Bribri     | 20.35 | 45.56
Guarani    | 34.99 | 77.14
Maya       | 52.38 | 78.72

## No-op baseline

The no-op baseline just copies source sentence without any changes.
There is no code for it, since it's trivial.

Results of the no-op baseline:

| Language |  BLEU | ChrF |
-----------|-------|-------
Bribri     | 10.59 | 38.42
Guarani    | 23.33 | 71.47
Maya       | 33.67 | 69.15
