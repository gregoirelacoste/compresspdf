# compresspdf
ZSH script for pdf compression using ghostscript

```#!bin/zsh compressPDF.sh
compressPDF.sh catalogue-exemple-2019-2020.pdf
1) /screen  low-resolution            3) /printer  Print Optimized setting  5) /default                           
2) /ebook  medium-resolution          4) /prepress Prepress Optimized       6) - Fin -                            
Veuillez entrer un mode de compression pour catalogue-exemple-2019-2020.pdf: 2
Vous avez choisi l'item 2 : /ebook  medium-resolution
Compression du PDF catalogue-exemple-2019-2020.pdf avec le paramètre /ebook
```
Use terminal to compress PDF.
1. go to your folder : cd /myfolder
1. #! compressPDF.sh myfile.pdf
1. Choose 1 compression option
1. That's all

### Options : 
1) /screen  low-resolution            3) /printer  Print Optimized setting  5) /default                           
2) /ebook  medium-resolution          4) /prepress Prepress Optimized       6) - Fin -  

Result on one exemple : 
From 263 470 804 
to    28 568 934 
with /ebook mode
