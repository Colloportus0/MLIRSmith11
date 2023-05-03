opt=$1
for f in `ls reduce/temp`
do
    mlir-opt $1 reduce/temp/$f 2>  reduce/temp/${f}.log
done