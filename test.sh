#!/bin/bash
##############################################################################
trinken='Whisky und Zigarre'
echo $0
echo $1

echo `date`

echo $(date)

remove='rm text.txt'
$remove

string_1='Heia'
string_2=Popeia
string="$(string_1) $(string_2) was raschelt im stroh?"
echo "$string_1 $string_2 aber im Heu"
echo $strin



lsdpfr

echo $?

###############################################################################
read -p "Ihre Eingabe:" var_name

echo "Die Eingabe lautet: $var_name"

if [[ $var_name = "q" ]]
then
	echo "ist ein prima q"
elif [[ $var_name = "m" ]]
then 
	echo "Jo, ein m"
else
	echo "irgendwas anderes"
fi
################################################################################
if [[ $1 ]]
then
	abfrage=$1
else
read -p "Ihre Eingabe:" abfrage
echo "Die Eingabe lautet: $abfrage"
fi
if [[ -e $abfrage ]]
then
	echo "Der Eintrag ist vorhanden: $abfrage"
else
	echo "Ist nicht vorhanden"

fi
################################################################################
while [[ $eingabe -ne 1 ]]
do
	read -p "Mach Eingabe du:" eingabe
	echo $eingabe
done
