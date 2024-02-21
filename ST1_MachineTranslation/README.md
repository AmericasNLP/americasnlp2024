# AmericasNLP 2024 Shared Task on Machine Translation into Indigenous Languages

Welcome to the Machine Translation Shared Task into Indigenous Languages! We are excited to host the **3rd iteration** of the Shared Task. For reference to the prior shared tasks, winning submissions, and further analysis on the data and results, please see the following Findings papers, from [2021](https://aclanthology.org/2021.americasnlp-1.23/) and [2023](https://aclanthology.org/2023.americasnlp-1.23/). 
System description papers can be found [here for 2021](https://aclanthology.org/volumes/2021.americasnlp-1/) and [here for 2023](https://aclanthology.org/volumes/2023.americasnlp-1/). 

## Updates

- 2/5/2024 : The training and development data has been released!

## Shared Task

For the 2024, we will follow prior years: Spanish (or another high-resource language) will be used as the source language, and model outputs will be in the target Indigenous language. 

## Registration

Please use the following link to indicate your interest in participating: https://forms.gle/d8en6TuGRo6UKxaU6

## Contact

We are more than happy to answer any questions regarding the workshop or shared task, please email us at [americas.nlp.workshop@gmail.com](malito:americas.nlp.workshop@gmail.com). Alternatively, [join our Slack channel](https://join.slack.com/t/americasnlp/shared_invite/zt-2c3lstrpe-n6DXqZyGVXVqDaGiM7mbHA).


### Rules

1. Similar to prior years, training on the development set is **not** allowed. Specifically, the dev set should only be used to evaluate a current model; as a rule of thumb, the model outputs at inference time should be consistent with or without access to the development set. If you have any questions or would like to clarify a specific approach, please contact the organizers!   
2. Using the [AmericasNLI](https://aclanthology.org/2022.acl-long.435.pdf) test set for hyperparameter tuning or any form of decision making is not allowed. 
3. Evaluation will be done using the `evaluate.py` script. The final order of teams will be selected using average **ChrF++** across all languages. Note that prior years have used *ChrF*.
4. For this year, we will **not** allow multiple submissions which rely on the same model (by same, we mean the same exact weights and architecture). As an example, if a submitted system relies on a specific model (say Model A), a second submission which relies on a new model (Model B) for some languages, but falls back to Model A given dev set performance, is not allowed. In this case, there are two allowed possibilites: (1) submit Model B as an independent submission with no fallback to Model A or (2) withdraw the original submission of Model A, and submit the system which relies on both Model A and Model B as a single submission. As a rule of thumb, two submissions from the same team should not have the same exact performance for a given language unless by chance. 


## Baseline Systems 

This year we provide two baseline systems, based on the best contenders of the previous year's results.
- [Sheffield](https://aclanthology.org/2023.americasnlp-1.21/): you can find more information [here](baselines/sheffield)
- [Helsinki](https://aclanthology.org/2023.americasnlp-1.20/): you can find more information [here](baselines/helsinki)

We provide ChrF++ results computed with the [evaluate.py](evaluate.py) script.

*Coming soon*: Sheffield baseline

## Results

### Development set

Results for development sets in **ChrF++**: 

| ISO| Language | Helsinki | Sheffield
---|---|----|----
aym | Aymara | 13.08 | TBD
bzd |Bribri | 9.74 | TBD
cni | Asháninka | 13.18 | TBD
ctp | Chatino |  8.93 | TBD
gn | Guarani | 19.26 | TBD
hch | Wixarika | 15.80 | TBD
nah | Nahuatl | 14.50 | TBD
oto | Otomí |  12.43 | TBD
quy | Quechua | 14.07 | TBD
shp | Shipibo-Konibo | 12.95 | TBD
tar | Rarámuri | 12.57 | TBD


### Test set

Results for test sets in **Chrf++**:

| ISO| Language | Helsinki | Sheffield
---|---|----|----
aym | Aymara | 29.36 | TBD
bzd |Bribri | 23.47 | TBD
cni | Asháninka | 24.92 | TBD
ctp | Chatino |  29.84 | TBD
gn | Guarani | 37.02 | TBD
hch | Wixarika | 28.67 | TBD
nah | Nahuatl | 22.78 | TBD
oto | Otomí |  13.32 | TBD
quy | Quechua | 28.81 | TBD
shp | Shipibo-Konibo | 30.21 | TBD
tar | Rarámuri | 16.98 | TBD
