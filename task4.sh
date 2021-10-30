#!/bin/bash


FILE=$1

declare -a array
array=$(<$FILE)

if [ -s "$FILE" ] && [ -f "$FILE" ];then
    array=$(<$FILE); 
    echo "zawartosc pliku: "
    echo "${array[@]}"
    echo -e
    echo "MAIN MENU"
    echo "========"
    while true
    do
        echo -e
        echo "[1]-Znajdz liczbe maksymalna"
        echo "[2]-Znajdz liczbe minimalna"
        echo "[3]-oblicz sume liczb"
        echo "[4]-oblicz roznice liczb"
        echo "[5]-oblicz iloczyn liczb"
        echo "[q]-zakoncz prace"
        read -p "Podaj numer operacji: " operation
        case $operation in
        "1") echo "${array[@]}" | sort -nr |  head -n1 ;;
        "2") echo "${array[@]}" | sort -n |  head -n1 ;;
        "3") suma=0;
             for i in ${array[@]}
             do
                suma=$(( $suma + $i ))
             done;
             echo $suma ;;
        "4") tab=(`cat $FILE`)
             roznica=${tab[0]}
             echo "roznica"
             for i in ${tab[@]:1:4}
             do 
                roznica=$(($roznica - $i))
             done;
             echo "$roznica" ;;
        "5") iloczyn=1;
             for i in ${array[@]}
             do
                iloczyn=$(( $iloczyn * $i ))
             done;
             echo "$iloczyn" ;;

        "q") echo "Zakonczyles prace programu"; exit 0 ;;
        esac 
    done
else
    echo "Plik nie zostal podany lub jego zawartosc jest pusta"
fi




















# 
# 
    # array=(`cat "$FILE"`)
# 
    # echo "Liczby podane w pliku: ${array[@]}"
# 
    # max="${array[0]}"
    # min="${array[0]}"
# 
# for i in "${array[@]}"
# do 
    # (( $i > $max )) && max=$i
    # (( $i < $min )) && min=$i
# 
# done
# 
# echo "$max"
# echo "$min"
