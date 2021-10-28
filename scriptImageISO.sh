#!/bin/bash

declare -A LINUX_DISTRO=( ["ubuntu16.04"]="https://pl.releases.ubuntu.com/16.04/ubuntu-16.04.7-desktop-amd64.iso"
 ["ubuntu18.04"]="https://releases.ubuntu.com/18.04/ubuntu-18.04.6-desktop-amd64.iso"
 ["ubunut20.04"]="https://ubuntu.com/download/desktop/thank-you?version=20.04.3&architecture=amd64"
 ["Quit"]="Quit" )

while true 
do
     select distro in "${!LINUX_DISTRO[@]}"
     do 
        case $distro in 
        "ubuntu16.04") echo "ubunut16.04";
         wget ${LINUX_DISTRO["${distro}"]} --show-progress -O ./${distro}.img break ;;
        "ubuntu18.04") echo "ubuntu18.04";
         wget ${LINUX_DISTRO["${distro}"]} --show-progress -O ./${distro}.img break ;;
        "ubunut20.04") echo "ubunut20.04";
         wget ${LINUX_DISTRO["${distro}"]} --show-progress -O ./${distro}.img break ;;
        "Quit") exit 0 ;;
        *) echo "version not recognized"; break ;;
    esac
    done
read -p "please press enter "
clear
done