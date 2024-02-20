import re
import sys
import os   

def replace_superscripts(text):
    fixed_text = []
    superscript_dict = { "A":"ᴬ", "J":"ᴶ", "f":"ᶠ", "K":"ᴷ", "E":"ᴱ","I":"ᴵ","c":"ᶜ","B":"ᴮ","G":"ᴳ","H":"ᴴ"}
    for line in text.splitlines():
        for superscript in superscript_dict.keys():
            regex=superscript+"\\b"
            line = re.sub(regex,superscript_dict[superscript],line)

            if superscript == "J":
                regex="([a-z])(J)"
                line = re.sub(regex,"\\1"+superscript_dict["J"],line)
        print(line)
        fixed_text.append(line)

    return(fixed_text)

def main():
    input_name = sys.argv[1]
    output_name = sys.argv[2]
    with open(input_name,"r") as textin, open(output_name,"w") as textout:
        fixed_text = replace_superscripts(textin.read())
        for line in fixed_text:
            textout.write(line+"\n")

main()