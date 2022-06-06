#!/bin/bash

tailwind_FN_INPUT="input.css";
tailwind_FN_OUTPUT="tailwind.min.css";
config_FN_JS="tailwind.config.js"

functions_F_NAME="functions.php";
NODE_DIR="node_modules/"


DIR_OF_PATHES=('../../' '../../../' '../../../../','../')





for i in "${DIR_OF_PATHES[@]}";
do

FOLDER=$i
Func_FILE="$FOLDER/$functions_F_NAME"


if test -f $Func_FILE; then

tailwindPath=$(find $FOLDER -type f -name $tailwind_FN_OUTPUT )

tailwind_DIR=$(dirname "${tailwindPath}")

tailwind_input_css="${tailwind_DIR}/${tailwind_FN_INPUT}"
tailwind_output_css="${tailwind_DIR}/${tailwind_FN_OUTPUT}"


funcPath="${FOLDER}/$functions_F_NAME"



full_init(){

npx tailwindcss -c $config_FN_JS -i $tailwind_input_css -o $tailwind_output_css --dev

}



install(){

if [ -d "$NODE_DIR" ]; then
echo "The folder has already been installed ${NODE_DIR}..."

else

echo "Installing in progress"


npm install -D tailwindcss;



#create tailwind.config.js
if test -f $config_FN_JS; then
echo "$config_FN_JS file already exists"

else

while read line; do

echo -e "${line/"EMPTY_PATH"/"${FOLDER}"}" >> $config_FN_JS

done < simple.config.js

fi

#end



## start write

i=1
while read line
 do
test $i -eq 1 && ((i=i+1)) && continue


#echo -e "${line/"EMPTY_PATH"/"$tailwindPath"}" >> $funcPath


echo -e "${line/"EMPTY_PATH"/"${tailwindPath//"../"/"/"}"}" >> $funcPath



done < simple-functions.php

## end write



fi

}



if  [[ $1 = "-install" ]]; then

install

elif [[ $1 = "-full" ]]; then

echo "Full css in progress"

full_init

elif [[ $1 = "-minify" ]]; then

echo "Optimizing for Production in progress"

npx tailwindcss -o $tailwind_output_css --minify

else
echo "use option [ -install , -full , -minify ]"





## start write

i=1
while read line
 do
test $i -eq 1 && ((i=i+1)) && continue


echo -e "${line/"EMPTY_PATH"/"${tailwindPath//"../"/"/"}"}"


done < simple-functions.php

## end write






fi







fi

done
