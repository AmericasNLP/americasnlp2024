#!/usr/bin/env python3

import csv
import sys

from spacy.pipeline._edit_tree_internals.edit_trees import EditTrees
from spacy.strings import StringStore

if len(sys.argv) != 4:
    print(f"Usage: {sys.argv[0]} train.tsv dev.tsv dev-prediction.tsv")
    sys.exit(1)

edit_trees = EditTrees(StringStore([]))

change_to_trees = {}

train_path = sys.argv[1]
dev_path = sys.argv[2]
dev_prediction_path = sys.argv[3]

with open(train_path, newline="", encoding="utf-8") as tf:
    tcsv = csv.DictReader(tf, delimiter="\t")

    for row in tcsv:
        tree = edit_trees.add(
            row["Source"], row["Target"]
        )  # returns old tree id when resulting tree already exists

        change = row["Change"]

        if change not in change_to_trees:
            change_to_trees[change] = {}

        if tree in change_to_trees[change]:
            change_to_trees[change][tree] += 1
        else:
            change_to_trees[change][tree] = 1

with open(dev_path, newline="", encoding="utf-8") as ifile, open(
    dev_prediction_path, "w", newline="", encoding="utf-8"
) as ofile:
    icsv = csv.DictReader(ifile, delimiter="\t")
    fieldnames = icsv.fieldnames
    fieldnames.append("Predicted Target")

    ocsv = csv.DictWriter(ofile, fieldnames=fieldnames, delimiter="\t")
    ocsv.writeheader()

    for row in icsv:
        prediction = None
        change = row["Change"]

        if change in change_to_trees:
            trees = change_to_trees[change]
            for tree in sorted(trees, key=lambda t: trees[t], reverse=True):
                prediction = edit_trees.apply(tree, row["Source"])
                if prediction:
                    break

        if prediction:
            row["Predicted Target"] = prediction
        else:
            row["Predicted Target"] = row["Source"]

        ocsv.writerow(row)
