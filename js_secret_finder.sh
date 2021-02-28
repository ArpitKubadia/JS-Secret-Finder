#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

while read js_domain; 
do
    echo $js_domain;
    
    #Get name of file
    filename=$(basename "$js_domain");
    
    #Fetch JS file locally
    wget $js_domain;
    
    #Extract filename without extension for foldername
    foldername="${filename%.*}";
    
    if test -f "$filename";
    then
      mkdir "$foldername";
      
      mv $filename $foldername/;
    fi
    
done < /dev/stdin;
  
for file in ~/.gf/*.json :
  do
      pattern=$(basename "$file" .json);
      
      #Excluding certain patterns which generate lot of noise. To be added as an optional parameterised input
      if [ "$pattern" == ":" ]  || [ "$pattern" == "strings" ]; then
            continue;
      fi
      
      echo -e "${GREEN} $pattern ${NC}";
      
      gf $pattern | anew gf_out.txt;
  done 
