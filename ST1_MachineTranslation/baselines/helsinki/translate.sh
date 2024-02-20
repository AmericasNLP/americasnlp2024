# Make sure your venv includes sacrebleu, sentencepiece and opennmt
# Models were trained using an older version of opennmt: Opennmt 2.3.0

source_dir=$1
output_dir=$2
sourcefile=$3
SPM="modelb/all_32k.model"

declare -A LANG=(
	["cni"]="ashaninka" ["aym"]="aymara" ["bzd"]="bribri" ["czn"]="chatino"
	["gn"]="guarani" ["oto"]="hñähñu" ["nah"]="nahuatl" ["quy"]="quechua"
	["tar"]="raramuri" ["shp"]="shipibo_konibo" ["hch"]="wixarika"
)

# submitted models
declare -A MODELS=(
	["aym"]="model_ml_step_148000.pt"
	["bzd"]="model_ml_step_90000.pt"
	["cni"]="model_cni_step_214000.pt"
	["czn"]="model_ml_step_178000.pt"
	["gn"]="model_gn_step_196000.pt"
	["hch"]="model_ml_step_90000.pt"
	["nah"]="model_ml_step_148000.pt"
	["oto"]="model_ml_step_124000.pt"
	["quy"]="model_ml_step_148000.pt"
	["shp"]="model_ml_step_124000.pt"
	["tar"]="model_tar_step_126000.pt"
)


# Tokenize
for LG in "${!LANG[@]}"; do
	echo "Tokenizing... $LG -- ${LANG[$LG]}"
	sed "s/^/<${LG}> <${LG}-default> <default> /g" $source_dir/${LANG[$LG]}-spanish/$sourcefile | spm_encode --model=$SPM --output_format=piece > $output_dir/$sourcefile-$LG.es.tok
done

# Translate
for LG in "${!LANG[@]}"; do
	if [ ! -e "$output_dir/$sourcefile-$LG.$LG.tok" ]; then
		echo "Translating... $LG -- ${MODELS[$LG]}"
		onmt_translate -model "modelb/${MODELS[$LG]}" -src $output_dir/$sourcefile-$LG.es.tok -output $output_dir/$sourcefile-$LG.$LG.tok -gpu 0
	fi
done

# Detokenize
for LG in "${!LANG[@]}"; do
	echo "Detokenizing... $LG -- ${LANG[$LG]}"
	sed -e 's/<unk> *//g' $output_dir/$sourcefile-$LG.$LG.tok | spm_decode --model=$SPM --input_format=piece | sed -e 's/▁//g' > $output_dir/$sourcefile-$LG.$LG.txt
	grep -P '^$' $output_dir/$sourcefile-$LG.$LG.txt | wc -l
done

# Postprocess Chatino
python chatino_postprocessing.py $output_dir/$sourcefile-czn.czn.txt $output_dir/$sourcefile-czn.czn.txt.postprocessed
mv $output_dir/$sourcefile-czn.czn.txt $output_dir/$sourcefile-czn.czn.txt.preprocessed
mv $output_dir/$sourcefile-czn.czn.txt.postprocessed $output_dir/$sourcefile-czn.czn.txt

# Postprocess Otomí
python otomi_postprocessing.py $output_dir/$sourcefile-oto.oto.txt $output_dir/$sourcefile-oto.oto.txt.postprocessed
mv $output_dir/$sourcefile-oto.oto.txt $output_dir/$sourcefile-oto.oto.txt.preprocessed
mv $output_dir/$sourcefile-oto.oto.txt.postprocessed $output_dir/$sourcefile-oto.oto.txt
