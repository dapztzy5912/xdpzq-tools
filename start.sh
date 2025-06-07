#!/bin/bash

# Warna
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
cyan='\033[1;36m'
reset='\033[0m'

clear
echo -e "${cyan}Memuat Tools XdpzQ...${reset}"
sleep 1
clear

# Banner
figlet "XdpzQ Tools" | lolcat
echo -e "${yellow}╔═══════════════════════════════════════╗"
echo -e "║   Selamat datang, $(whoami)                      ║"
echo -e "║   Hari ini: $(date '+%A, %d %B %Y')         ║"
echo -e "${yellow}╚═══════════════════════════════════════╝${reset}"

# Menu
echo -e "\n${green}╔══════════ MENU UTAMA ══════════╗"
echo -e "║ ${red}1${reset}${green}. Info Sistem                       ║"
echo -e "║ ${red}2${reset}${green}. Update & Upgrade Paket           ║"
echo -e "║ ${red}3${reset}${green}. Keluar                            ║"
echo -e "╚════════════════════════════════╝${reset}"
read -p "$(echo -e $cyan'Masukkan pilihan Anda → '$reset)" pilih

case $pilih in
    1)
        echo -e "\n${yellow}Menampilkan Info Sistem...${reset}"
        uname -a
        ;;
    2)
        echo -e "\n${yellow}Melakukan update dan upgrade...${reset}"
        pkg update && pkg upgrade -y
        ;;
    3)
        echo -e "${red}Keluar dari tools...${reset}"
        exit
        ;;
    *)
        echo -e "${red}Pilihan tidak valid!${reset}"
        ;;
esac
