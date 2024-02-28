## Parallel data

The parallel data provided for Asháninka (cni) - Spanish (es) has been extracted and pre-processed by Richard Castro (https://github.com/hinantin/AshaninkaMT). He processed different sources and provided his own translations. 

If you use this corpus, please cite the following references:
```
@inproceedings{ortega-etal-2020-overcoming,
    title = "Overcoming Resistance: The Normalization of an {A}mazonian Tribal Language",
    author = "Ortega, John  and
      Castro-Mamani, Richard Alexander  and
      Montoya Samame, Jaime Rafael",
    booktitle = "Proceedings of the 3rd Workshop on Technologies for MT of Low Resource Languages",
    month = dec,
    year = "2020",
    address = "Suzhou, China",
    publisher = "Association for Computational Linguistics",
    url = "https://www.aclweb.org/anthology/2020.loresmt-1.1",
    pages = "1--13",
}
```
```
@misc{cushimariano:prel:08,
  author = {Cushimariano Romano, Rub\'{e}n and Sebasti\'{a}n Q., Richer C.},
  title = {{\~N}aantsipeta ash{\'a}ninkaki birakochaki. Diccionario Ash{\'a}ninka-Castellano. Versi{\'o}n preliminar},
  howpublished = {\url{http://www.lengamer.org/publicaciones/diccionarios/}},
  year = {2008},
}
```
```
@book{mihas:anaani:11,
author={Mihas, Elena},
title={A\~{n}aani katonkosatzi parenini, El idioma del alto Peren\'{e}},
year={2011},
publisher={Milwaukee, WI: Clarks Graphics},
}
```

## Monolingual data

There is monolingual data available in: https://github.com/iapucp/multilingual-data-peru/edit/master/ShaShiYaYi. Download the ```cni``` folder.

If you use this corpus, please cite the following article:
```
@inproceedings{bustamante-etal-2020-data,
    title = "No Data to Crawl? Monolingual Corpus Creation from {PDF} Files of Truly low-Resource Languages in {P}eru",
    author = "Bustamante, Gina  and
      Oncevay, Arturo  and
      Zariquiey, Roberto",
    booktitle = "Proceedings of The 12th Language Resources and Evaluation Conference",
    month = may,
    year = "2020",
    address = "Marseille, France",
    publisher = "European Language Resources Association",
    url = "https://www.aclweb.org/anthology/2020.lrec-1.356",
    pages = "2914--2923",
    language = "English",
    ISBN = "979-10-95546-34-4",
}
```
# TSV files
The HelsinkiNLP participation in the MT shared task in previous years included gathering additional resources. When available for each language-pair, these resources have been made available to participants in the `extra.tsv` and `synthetic.tsv` files.
Each `.tsv` document contains 3 columns, with a parallel sentence and its origin, as follows: 
```
TAG_of_sentence_origin    source_sentence    target_sentence  
```
Furhter, each files contents are:
 - `extra.tsv`: data obtained form different resources, as reported in De Gibert et al.[(2023)](https://aclanthology.org/2023.americasnlp-1.20/). The `TAG_of_sentence_origin` field roughly corresponds to the names used in the article.  
 - `synthetic.tsv`: data generatied via backtranslating resources


If you use these resources, please cite:
```
@inproceedings{de-gibert-etal-2023-four,
    title = "Four Approaches to Low-Resource Multilingual {NMT}: The {H}elsinki Submission to the {A}mericas{NLP} 2023 Shared Task",
    author = {De Gibert, Ona  and
      V{\'a}zquez, Ra{\'u}l  and
      Aulamo, Mikko  and
      Scherrer, Yves  and
      Virpioja, Sami  and
      Tiedemann, J{\"o}rg},
    editor = "Mager, Manuel  and
      Ebrahimi, Abteen  and
      Oncevay, Arturo  and
      Rice, Enora  and
      Rijhwani, Shruti  and
      Palmer, Alexis  and
      Kann, Katharina",
    booktitle = "Proceedings of the Workshop on Natural Language Processing for Indigenous Languages of the Americas (AmericasNLP)",
    month = jul,
    year = "2023",
    address = "Toronto, Canada",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2023.americasnlp-1.20",
    doi = "10.18653/v1/2023.americasnlp-1.20",
    pages = "177--191",
}

```

