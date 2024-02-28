## Parallel data

There are three sources for Spanish (es) - Shipibo-Konibo (shp) parallel data:

1. Flashcards: A sample from the Tatoeba dataset translated into Shipibo-Konibo
2. Educational: Translated sentences from books for bilingual education
3. Dictionary: SIL dictionary entries and examples (https://www.sil.org/resources/archives/30143)

The three datasets are concatenated (in the specified order) in ```train.es``` and ```train.shp```.

If you use these corpora, please cite the following articles:
```
@inproceedings{montoya-etal-2019-continuous,
    title = "A Continuous Improvement Framework of Machine Translation for {S}hipibo-Konibo",
    author = "Montoya, H{\'e}ctor Erasmo G{\'o}mez  and
      Rojas, Kervy Dante Rivas  and
      Oncevay, Arturo",
    booktitle = "Proceedings of the 2nd Workshop on Technologies for MT of Low Resource Languages",
    month = aug,
    year = "2019",
    address = "Dublin, Ireland",
    publisher = "European Association for Machine Translation",
    url = "https://www.aclweb.org/anthology/W19-6804",
    pages = "17--23",
}
```
```
@inproceedings{galarreta-etal-2017-corpus,
    title = "Corpus Creation and Initial {SMT} Experiments between {S}panish and {S}hipibo-konibo",
    author = "Galarreta, Ana-Paula  and
      Melgar, Andr{\'e}s  and
      Oncevay, Arturo",
    booktitle = "Proceedings of the International Conference Recent Advances in Natural Language Processing, {RANLP} 2017",
    month = sep,
    year = "2017",
    address = "Varna, Bulgaria",
    publisher = "INCOMA Ltd.",
    url = "https://doi.org/10.26615/978-954-452-049-6_033",
    doi = "10.26615/978-954-452-049-6_033",
    pages = "238--244",
}
```

## Monolingual data

There is monolingual data available in the repository: https://github.com/iapucp/multilingual-data-peru/edit/master/ShaShiYaYi

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
