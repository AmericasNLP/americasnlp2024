import re
import sys
import os

# python otomi_postprocessing.py <input> <output>

mode = 'more' # 'more' or 'none'

def replace_punctuation_and_vowels(text):
    # replace punctuation with spaces
    #p = ['̌', '`', '́', '>', '̠', '*', '+', '―', '<', '̈', '°', '̱']
    if mode == 'more':
        punctuation = r'[()"=Z\[\]¨«´»ị–—‘’“”…`>*+―<°]'
    else:
        punctuation = r'[()"=Z\[\]¨«´»ị–—‘’“”…]'
    text = re.sub(punctuation, '', text)
    
    # replace vowels without punctuation
    a= {'ɛ': 'E', 'Ø': 'O', 'Ö': 'O', 'Ü': 'U', 'Ʉ': 'U', 'ǎ': 'a', 'ë': 'e', 'è': 'e',
        'ě': 'e', 'ǐ': 'i', 'ï': 'i', 'ǒ': 'o', 'º': 'o', 'ò': 'o', 'ø': 'o', 'ǔ': 'u', 'ʉ': 'u'}
    vowels = {'Á': 'A', 'Ä': 'A', 'É': 'E', 'Ó': 'O', 'ä': 'a', 'ì': 'i', 'ö': 'o', 'ü': 'u',
              'ă': 'a', 'đ': 'd', 'ĕ': 'e', 'į': 'i', 'ı': 'i', 'Ň': 'N', 'ŏ': 'o', 'ř': 'r',
              'ť': 't', 'ŭ': 'u', 'ʼ': ''}

    if mode == 'more':
        vowels = vowels | a
    
    for vowel, replacement in vowels.items():
        text = text.replace(vowel, replacement)
    
    return text



def main():
    input_name = sys.argv[1]
    output_name = sys.argv[2] 
    with open(input_name,"r") as textin, open(output_name,"w") as textout:
        text = replace_punctuation_and_vowels(textin.read())
        textout.write(text)


main()