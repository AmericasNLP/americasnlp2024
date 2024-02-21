# ST1 Machine Translation Baseline: Sheffield

This directory contains baseline resources for the AmericanNLP2024 Shared Task 1 (ST1) on Machine Translation, specifically using models and scripts developed by the Sheffield group.

You can find more information in their Github repository: [https://github.com/edwardgowsmith/americasnlp-2023-sheffield/](https://github.com/edwardgowsmith/americasnlp-2023-sheffield/)

As a baseline, we are using a combination of their submissions #2 and #3, since they are based in the same multilingual model, choosing different checkpoints.
We use submission #3 for most languages and submission #2 for `aym`, `gn`, `quy` and `shp`.

## Contents

- `preprocess.sh`: A bash script to preprocess data before translation.
- `generate.sh`:  A bash script to infer translations with the models.

## Getting Started

1) Download models from: https://drive.google.com/drive/folders/12MCYFD5Q9YRWrRCWjqjEorsDLgGp_gXB?usp=sharing 

2) Install fairseq and checkout the nllb branch

3) Clone the GitHub repo https://github.com/edwardgowsmith/americasnlp-2023-sheffield/ and put the preproccess.sh and generate.sh scripts from here in that directory

For a single target language:

4) Run preprocess.sh to process the test data with fairseq:
	- This assumes the test data (Spanish) is at  data/test.spa_Latn-${tlang}_Latn.spa_Latn where tlang is the target language code (e.g. quy)
	- Processed data is output to data-bin/spa_Latn-${tlang}_Latn/
	
5) Make a folder named outputs

6) Run generate.sh:
	- Change ckp to point to the relevant model checkpoint
	- This assumes the test data (target language) is at  data/test.spa_Latn-${tlang}_Latn.${tlang}_Latn
	- Output hypotheses will be at outputs/${tlang}.hyp 

## Citation

If you use this model, please consider citing the following papers:

```latex
@inproceedings{gow-smith-snchez-villegas-2023-sheffields,
    title = {{S}heffield{'}s Submission to the {A}mericas{NLP} Shared Task on Machine Translation into Indigenous Languages},
    author = {Gow-Smith, Edward  and
      S{\'a}nchez Villegas, Danae},
    editor = {Mager, Manuel  and
      Ebrahimi, Abteen  and
      Oncevay, Arturo  and
      Rice, Enora  and
      Rijhwani, Shruti  and
      Palmer, Alexis  and
      Kann, Katharina},
    booktitle = {Proceedings of the Workshop on Natural Language Processing for Indigenous Languages of the Americas (AmericasNLP)},
    month = jul,
    year = {2023},
    address = {Toronto, Canada},
    publisher = {Association for Computational Linguistics},
    url = {https://aclanthology.org/2023.americasnlp-1.21},
    doi = {10.18653/v1/2023.americasnlp-1.21},
    pages = {192--199},
    abstract = {The University of Sheffield took part in the shared task 2023 AmericasNLP for all eleven language pairs. Our models consist of training different variations of NLLB-200 model on data provided by the organizers and available data from various sources such as constitutions, handbooks and news articles. Our models outperform the baseline model on the development set on chrF with substantial improvements particularly for Aymara, Guarani and Quechua. On the test set, our best submission achieves the highest average chrF of all the submissions, we rank first in four of the eleven languages, and at least one of our models ranks in the top 3 for all languages.},
}
```