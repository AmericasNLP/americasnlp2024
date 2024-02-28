## Parallel data

The development and test sets are translated into the standard version of [Southern Quechua](https://en.wikipedia.org/wiki/Southern_Quechua). 
Southern Quechua includes different Quechua variants, where Quechua Cuzco (quz) and Quechua Ayacucho (quy) are very well-known ones. We provide datasets for both variants.

1. JW300 (quy, quz): Jehova's Witnesses texts, available in OPUS (http://opus.nlpl.eu/JW300.php). We are also providing the parallel data aligned with English as an extra.
2. MINEDU (quy): Sentences extracted from the the official dictionary of the Minister of Education (MINEDU) in Peru for Quechua Ayacucho.
3. Dict_misc (quy): Dictionary entries and samples collected by [Diego Huarcaya](https://github.com/DiegoCrafter).

Only JW300 (quy) is included in the ```train.quy``` and ```train.es``` files. However, we encourage to use both variants. ```dict.quy``` and ```dict.es``` include the sources 2 and 3.

If you use these corpora, please cite:
```
@inproceedings{agic-vulic-2019-jw300,
    title = "{JW}300: A Wide-Coverage Parallel Corpus for Low-Resource Languages",
    author = "Agi{\'c}, {\v{Z}}eljko  and
      Vuli{\'c}, Ivan",
    booktitle = "Proceedings of the 57th Annual Meeting of the Association for Computational Linguistics",
    month = jul,
    year = "2019",
    address = "Florence, Italy",
    publisher = "Association for Computational Linguistics",
    url = "https://www.aclweb.org/anthology/P19-1310",
    doi = "10.18653/v1/P19-1310",
    pages = "3204--3210",
}
```
```
@inproceedings{tiedemann-2012-parallel,
    title = "Parallel Data, Tools and Interfaces in {OPUS}",
    author = {Tiedemann, J{\"o}rg},
    booktitle = "Proceedings of the Eighth International Conference on Language Resources and Evaluation ({LREC}'12)",
    month = may,
    year = "2012",
    address = "Istanbul, Turkey",
    publisher = "European Language Resources Association (ELRA)",
    url = "http://www.lrec-conf.org/proceedings/lrec2012/pdf/463_Paper.pdf",
    pages = "2214--2218",
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
