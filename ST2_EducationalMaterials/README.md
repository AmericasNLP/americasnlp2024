**AmericasNLP 2024 Shared Task 2: Creation of Educational Materials for Indigenous Languages**

The idea of shared task 2 is to automatically convert sentences in Indigenous languages into small exercises for language learners. For this, participants are to create systems that can automatically modify sentences with regards to a given property (e.g., they could be negated). Those sentences can then be used as exercises by either asking learners to do the same transformation or by masking out all changed words in the sentence and asking learners to fill in the blank.

*Task Format*. The provided data files contain 4 columns:
- ID: to be ignored, for internal purposes only
- original sentence: this will be the first input to a model
- change to be conducted: this will be the second input 
- target sentence: the sentence to be generated

Concretely, this means that your system should be able to produce the fourth column if it's not provided, and test files will only consist of three columns.

Registration: https://forms.gle/frWNPP7abj8BsNZ99
