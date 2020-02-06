#!/bin/zsh

compression(){
	echo "Compression du PDF $pdfname avec le paramètre $option"
	ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=$2 -dNOPAUSE -dQUIET -dBATCH -sOutputFile="${1}-opti.pdf" $1
	echo "Terminé"
	exit 0
}

	if [ $1 ]
	then
		pdfname=$1
		PS3="Veuillez entrer un mode de compression pour ${pdfname}: "
			
		select option in "/screen  low-resolution" "/ebook  medium-resolution" "/printer  Print Optimized setting" "/prepress Prepress Optimized" "/default" "- Fin -"
		do
    		echo "Vous avez choisi l'option $REPLY : $option"
    		case $REPLY in
    			1) option="/screen";;
				2) option="/ebook" ;;
				3) option="/printer";;
				4) option="/prepress";;
				5) option="/default";;
				6) exit 0	
    		esac
    		compression "$pdfname" "$option"
    	done
    				
	else
		echo "Entrez le nom du fichier pdf à compresser"
	fi
