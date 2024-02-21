ckp=submission_3.pt
slang=spa_Latn

declare -A langs=( ["bzd_Latn"]="bribri" ["czn_Latn"]="chatino" ["cni_Latn"]="ashaninka" ["ayr_Latn"]="aymara" ["grn_Latn"]="guarani" ["oto_Latn"]="hñähñu" ["nah_Latn"]="nahuatl" ["quy_Latn"]="quechua" ["tar_Latn"]="raramuri" ["shp_Latn"]="shipibo_konibo" ["hch_Latn"]="wixarika" )
declare -A scodes=( ["bzd_Latn"]="bzd" ["czn_Latn"]="czn" ["cni_Latn"]="cni" ["ayr_Latn"]="aym" ["grn_Latn"]="gn" ["oto_Latn"]="oto" ["nah_Latn"]="nah" ["quy_Latn"]="quy" ["tar_Latn"]="tar" ["shp_Latn"]="shp" ["hch_Latn"]="hch" )

tlang=quy
out=outputs

fairseq-generate data-bin/spa_Latn-${tlang}_Latn/ -s $slang -t ${tlang}_Latn \
    --path $ckp --batch-size 128 \
    --beam 4 --lenpen 1.0 \
    --gen-subset test \
    --fixed-dictionary NLLB-inference/dictionary.txt \
    --task translation_multi_simple_epoch \
    --decoder-langtok --encoder-langtok src \
    --langs $(cat NLLB-inference/langs_extra.txt) \
    --lang-pairs $slang-${tlang}_Latn \
    --remove-bpe=sentencepiece \
    --add-data-source-prefix-tags 2>&1 > ${out}/${tlang}.out

sed -i "s/@\"/\"/g" ${out}/${tlang}.out
sed -i "s/調\"/\"/g" ${out}/${tlang}.out
sed -i "s/付\"/\"/g" ${out}/${tlang}.out
sed -i "s/혼'/'/g" ${out}/${tlang}.out
sed -i "s/ච'/'/g" ${out}/${tlang}.out
sed -i "s/완-/-/g" ${out}/${tlang}.out
sed -i "s/罪-/-/g" ${out}/${tlang}.out
sed -i "s/«/<</g" ${out}/${tlang}.out
sed -i "s/»/>>/g" ${out}/${tlang}.out
sed -i "s/‚/,/g" ${out}/${tlang}.out
sed -i "s/ ' /'/g" ${out}/${tlang}.out

lang=${tlang}_Latn
var="${langs[$lang]}"
scode="${scodes[$lang]}"
cat data/test.spa_Latn-${tlang}_Latn.${tlang}_Latn > ${out}/${tlang}.ref
cat ${out}/${tlang}.out | grep ^H | LC_ALL=C sort -V | cut -f3 > ${out}/${tlang}.hyp
cat ${out}/${tlang}.hyp | sacrebleu ${out}/${tlang}.ref -m bleu chrf

