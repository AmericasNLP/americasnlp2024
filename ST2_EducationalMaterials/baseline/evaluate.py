#!/usr/bin/env python3

import csv
import sys

import sacrebleu

if len(sys.argv) != 2:
    print(f"Usage: {sys.argv[0]} dev-prediction.tsv")
    sys.exit(1)

dev_prediction_file = sys.argv[1]

references = []
predictions = []

with open(dev_prediction_file, newline="", encoding="utf-8") as ifile:
    icsv = csv.DictReader(ifile, delimiter="\t")
    for row in icsv:
        references.append(row["Target"])
        predictions.append(row["Predicted Target"])

accuracy = (
    sum([int(r == p) for r, p in zip(references, predictions)]) / len(references) * 100
)
bleu = sacrebleu.corpus_bleu(predictions, [references]).format(score_only=True)
chrf = sacrebleu.corpus_chrf(predictions, [references]).format(score_only=True)

print(f"{dev_prediction_file}: Accuracy={accuracy:.02f}, BLEU={bleu}, ChrF={chrf}")
