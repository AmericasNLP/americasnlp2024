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
