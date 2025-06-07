#!/bin/bash
echo "Menginstal XdpzQ Tools..."

# Install dependencies
pkg install figlet lolcat -y

# Izinkan eksekusi
chmod +x start.sh

# Tambahkan ke .bashrc agar auto-run saat buka Termux
echo -e "\n# Auto-run XdpzQ Tools\ncd \$HOME/xdpzq-tools && bash start.sh" >> ~/.bashrc

echo "Selesai! Silakan buka ulang Termux atau jalankan: bash start.sh"
