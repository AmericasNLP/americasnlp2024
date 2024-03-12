#AmericasNLP 2024 Shared Task 2: Creation of Educational Materials for Indigenous Languages

The idea of shared task 2 is to automatically convert sentences in Indigenous languages into small exercises for language learners. For this, participants are to create systems that can automatically modify sentences with regards to a given property (e.g., they could be negated). Those sentences can then be used as exercises by either asking learners to do the same transformation or by masking out all changed words in the sentence and asking learners to fill in the blank.

*Task Format*. The provided data files contain 4 columns:
- ID: to be ignored, for internal purposes only
- original sentence: this will be the first input to a model
- change to be conducted: this will be the second input 
- target sentence: the sentence to be generated

Concretely, this means that your system should be able to produce the fourth column if it's not provided, and test files will only consist of three columns.

Registration: https://forms.gle/frWNPP7abj8BsNZ99

Baseline: the baseline and evaluation scripts are available [here](baseline/).


#Tag Meanings

**Type Categories**
| Category | Spanish Description | English Description |
| -------- | ------- | ------- |
| MODE | modo verbal | verbal mode |
| TENSE | tiempo verbal | verbal tense |
| ADVTENSE | adverbio tiempo | adverbal tense |
| ASPECT | aspecto verbal | verbal aspect |
| VOICE | voz | voice |
| TYPE | tipo de frase/polaridad | phrase type/polarity |
| ABSNUM | número del absolutivo | number of the absolutive |
| PERSON | persona | person |
| SUBTYPE | subtipo | subtype |
| TRANSITIV | transitividad | transitivity |
| MARK | marca | mark |
| STATUS | estado acción | action status |


**Type Values**

ALL
'No aplica': 'NA',
'Aplica': 'A'

TYPE
'Afirmativa': 'AFF',
'Afirmativo': 'AFF',
'Imperativo': 'IMP',
'Negativa': 'NEG',
'Negativo': 'NEG'

SUBTYPE
'Declarativa': 'DEC',
'Interrogativa': 'INT'

MODE
'Adversativo': 'ADVERS',
'Exhortativo': 'EXH',
'Optativo': 'DES',
'Indicativo': 'IND',
'Conocimiento': 'POT', # Potential
'Subjuntivo': 'SUB'

TENSE
'Imperfecto habitual': 'IPFV_HAB',        # Habitual imperfect
'Imperfecto reciente': 'IPFV_REC',        # Recent imperfect
'Imperfecto continuo': 'IPFV_PROG',        # Continuous imperfect
'Perfecto remoto': 'PRF_REM',            # Remote perfect
'Perfecto reciente': 'PRF_REC',          # Recent perfect
'Perfecto continuo': 'PRF_PROG',          # Continuous perfect
'Anterior': 'PAS_PLU',                       # Plusquamperfect
'Pasado': 'PAS_SIM',                       # Simple past
'Futuro de certidumbre': 'FUT_CER',      # Certain future
'Futuro potencial': 'FUT_POT',            # Potential future
'Futuro Perfecto': 'FUT_PER',            # Perfect future
'Futuro simple': 'FUT_SIM',            # Simple future
'Futuro': 'FUT_SIM',            # Simple future
'Pretérito Pluscuamperfecto': 'PAS_PLU', # Past perfect past
'Pretérito pluscuamperfecto': 'PAS_PLU', # Past perfect past
'Pretérito Reciente': 'PAS_REC',         # Past recent
'Pretérito reciente': 'PAS_REC',         # Past recent
'Pretérito imperfecto': 'PAS_IMP',       # Past imperfect
'Presente': 'PRE_SIM',                       # Simple present

ASPECT
'Imperfecto': 'IPFV',
'Imperfectivo': 'IPFV',
'Perfecto': 'PFV',
'Incoativo': 'INC',
'Compulsivo': 'COM',
'Desiderativo': 'DES',
'Obligatorio o necesario': 'OBL',
'Habitual': 'HAB',
'Acostumbrado': 'CUS', # Customary?
'Incipiente': 'BEG', # Beginning?
'Inmediato': 'IMM', # Immediate?
'Terminativo': 'TER',
'Asegurativo': 'INS', # Insurance?
'Progresivo': 'PRG',
'Intermitente': 'INM',
'-': '-'

VOICE
'Media': 'MID',
'Pasiva': 'PAS',
'Activa': 'ACT'

ABSNUM
'Plural': 'PL',
'Cero': 'NI'

PERSON
'1p-inc': '1_PL_INC', # Plural inclusive
'1p-exc': '1_PL_EXC', # Plural exclusive
'3p': '3_PL', # Plural
'2p': '2_PL', # Plural
'2a singular': '2_SI',
'3a singular': '3_SI',
'1a plural': '1_PL',
'2a plural': '2_PL',
'3a plural': '3_PL',
'1s': '1_SI',
'2s': '2_SI',
'3s': '3_SI',
'1s-inc': '1_SI_INC',
'1s-exc': '1_SI_EXC',
'1.singular': '1_SI',
'2.singular': '2_SI',
'1.plural.exclusivo': '1_PL_EXC',
'1.plural.inclusivo': '1_PL_INC',
'2.plural': '2_PL',
'3.plural': '3_PL',
'3.singular': '3_SI',
'1a singular': '1_SI'

TRANSITIV
'Intransitivo': 'ITR'

STATUS
'Completa': 'CMP',
'Incompleta': 'ICM'

MARK
't': 'T',
's': 'S'
