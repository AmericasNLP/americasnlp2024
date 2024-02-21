tlang=quy

fairseq-preprocess --source-lang spa_Latn --target-lang ${tlang}_Latn \
    --testpref data/test.spa_Latn-${tlang}_Latn.spa_Latn \
    --joined-dictionary	\
    --only-source \
    --srcdict NLLB-inference/dictionary.txt \
    --destdir data-bin/spa_Latn-${tlang}_Latn/ \
    --workers 10
