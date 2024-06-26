## Parallel data

The main source for Spanish (es) - Aymara (aym) is Global Voices, from OPUS (http://opus.nlpl.eu/GlobalVoices.php). 

We are providing the parallel data for both Spanish-Aymara and English-Aymara. Only the Spanish-Aymara is included in the main ```train.aym``` and ```train.es``` files.

If you use these corpora, please cite:
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
