#!/bin/bash
##############################################################################
#trinken='Whisky und Zigarre'
#echo $0
#echo $1

#echo `date`

#echo $(date)

#remove='rm text.txt'
#$remove

#string_1='Heia'
#string_2=Popeia
#string="$(string_1) $(string_2) was raschelt im stroh?"
#echo "$string_1 $string_2 aber im Heu"
#echo $strin



#lsdpfr

#echo $?

###############################################################################
#read -p "Ihre Eingabe:" var_name

#echo "Die Eingabe lautet: $var_name"

#if [[ $var_name = "q" ]]
#then
#	echo "ist ein prima q"
#elif [[ $var_name = "m" ]]
#then 
#	echo "Jo, ein m"
#else
#	echo "irgendwas anderes"
#fi
################################################################################
#Aufgabe:
#Erstellen sie ein Script, das einen Parameter entgegennimmt und checkt ob es eine Datei gibt, 
#die so heißt wie der übergebene Parameter.
#Aufruf: ./test.sh test.txt
#Erweiterung: Die Eingabeaufforderung soll so lange gezeigt werden, 
#bis der benutzer ein q eingibt, oder einen vorhandenen Dateinamen.

#if [[ $1 ]]; then
#	abfrage=$1
#else
	#while [[ $abfrage != 'q' ]] && [[ ! -e $abfrage ]]
#	until [[ $abfrage = 'q' ]] && [[  -e $abfrage ]]
#	do
#		read -p "Ihre Eingabe:" abfrage
#		echo "Die Eingabe lautet: $abfrage"
#	done

#fi
#if [[ -e $abfrage ]]
#then
#	echo "Der Eintrag ist vorhanden: $abfrage"
#else
#	echo "Ist nicht vorhanden"

#fi
################################################################################
#while [[ $eingabe -ne 1 ]]
#do
#	read -p "Mach Eingabe du:" eingabe
#	echo $eingabe
#done

################################################################################
#2.
#Programmieren Sie einen Taschenrechner. 
#In einer Eingabeforderung wird der Benutzer aufgefordert eine Zahl einzugeben. 
#Diese Zahl wird zur vorher eingegebenen Zahl hinzuaddiert. 
#Das Ergebnis wird ausgegeben und der Benutzer wird erneut zur Eingabe einer Zahl aufgefordert. 
#Das Endergebnis wird ausgegeben, wenn der User die Zeichenfolge 'exit' eingibt. 
#Die erste Eingabeaufforderung lautet: 'Geben Sie die 1. Zhal ein:'. 
#Die fünfte Eingabeaufforderung lautet:'Bisher wurden 4 Zahlen eingegeben. 
#Das Zwischenergebnis lautet: 22. Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit.' 
#Nach der Eingabe von exit lautet die Konsolenausgabe: 
#'Endergebnis: 33. Das Programm wurde beendet.' 
#Wird etwas anderes als eine Zahl eingegeben gibt das Programm aus: 
#'Falsche Eingabe: xxx kann nicht addiert werden. Geben Sie ausschließlich Zahlen ein.'




#while true
# do
#    read -p "Zahl1 " number1
#    read -p "Zahl2 " number2
#    PS3="Rechenoption "
#    select ans in add subtract multiply divide; do
#        case $ans in 
#            add) op='+' ; break ;;
#            subtract) op='-' ; break ;;
#            multiply) op='*' ; break ;;
#            divide) op='/' ; break ;;
#            *) echo "invalid response" ;;
#        esac
#    done
#    ans=$(echo "$number1 $op $number2" | bc -l)
#    printf "%s %s %s = %s\n\n" "$number1" "$op" "$number2" "$ans"
#done


#exit 0

read -p "Geben Sie die 1. Zahl ein" Zahl1

if [[ `echo "$zahl1" | grep [[:digit:]]` ]]
	then
	echo "Die 2.Zahl ist eine $zahl1"
else
	echo "Falsche Eingabe"
fi

ergebnis=zahl1
zaehler=1
read -p "Geben sie eine weitere Zahl ein, oder beenden Sie mit Exit: " eingabe
while [[ $eingabe -ne "exit" ]]; do
	((zaehler ++))
	ergebnis=$((ergebnis+eingabe))
	echo "Bisher wurde $zaehler Zahlen eingegeben. Das Zwischenergebnis lautet: $ergebnis"
	read -p "Geben sie eine weitere Zahl ein, oder beenden sie mit exit." eingabe
done

echo "Das ergebnis lautet: $ergebnis"

###################################################################################