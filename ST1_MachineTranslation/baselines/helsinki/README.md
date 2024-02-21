# ST1 Machine Translation Baseline: Helsinki

This directory contains baseline resources for the AmericanNLP2024 Shared Task 1 (ST1) on Machine Translation, specifically using models and scripts developed by the Helsinki NLP group.

You can find more information in their Github repository: [https://github.com/Helsinki-NLP/americasnlp2023-st](https://github.com/Helsinki-NLP/americasnlp2023-st)

## Contents

- `chatino_postprocessing.py`: A Python script for post-processing the translated Chatino text, addressing language-specific formatting and conventions.
- `dev_predictions/`: A directory containing the development set translations. These files are the output of running the translation models on the development dataset.
- `dev_results.txt`: A text file summarizing the performance metrics (e.g., BLEU, CHRF++) of the development set translations.
- `download_model.sh`: A shell script to automatically download the pre-trained Helsinki NLP models required for the translation tasks.
- `otomi_postprocessing.py`: A Python script for post-processing the translated Otomi text, similar to the Chatino post-processing but tailored to Otomi linguistic nuances.
- `translate.sh`: A shell script that wraps the model inference process, translating input text files using the downloaded Helsinki NLP models and applying necessary post-processing.

## Getting Started

1. **Model Download**: Run `download_model.sh` to download the necessary pre-trained models for translation.
2. **Modify `translate.sh`**: Make sure to modify the correspoding paths in the file and to have the necessary dependencies installed.
3. **Translate**:  Run `translate.sh` to download the necessary pre-trained models for translation.

## Citation

If you use this model, please consider citing the following papers:

```latex
@inproceedings{de-gibert-etal-2023-four,
    title = {Four Approaches to Low-Resource Multilingual {NMT}: The {H}elsinki Submission to the {A}mericas{NLP} 2023 Shared Task},
    author = {De Gibert, Ona  and
      V{\'a}zquez, Ra{\'u}l  and
      Aulamo, Mikko  and
      Scherrer, Yves  and
      Virpioja, Sami  and
      Tiedemann, J{\'o}rg},
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
    url = {https://aclanthology.org/2023.americasnlp-1.20},
    doi = {10.18653/v1/2023.americasnlp-1.20},
    pages = {177--191},
    abstract = {The Helsinki-NLP team participated in the AmericasNLP 2023 Shared Task with 6 submissions for all 11 language pairs arising from 4 different multilingual systems. We provide a detailed look at the work that went into collecting and preprocessing the data that led to our submissions. We explore various setups for multilingual Neural Machine Translation (NMT), namely knowledge distillation and transfer learning, multilingual NMT including a high-resource language (English), language-specific fine-tuning, and multilingual NMT exclusively using low-resource data. Our multilingual Model B ranks first in 4 out of the 11 language pairs.},
}
```