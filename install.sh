#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Downloading the script..."

mkdir -p /usr/bin/WADE

wget -O /usr/bin/WADE/shell.sh https://raw.githubusercontent.com/inteltoasters/WADE/refs/heads/main/shell.sh

chmod +x /usr/bin/WADE/shell.sh

echo "Adding the x-session..."

cat <<HEREDOC > /usr/share/xsessions/WADE.desktop
[Desktop Entry]
Version=1.0
Name=WADE
Comment=Michaelsoft Binbows
Exec=/usr/bin/WADE/shell.sh
Icon=
Type=Application
HEREDOC

echo "All done"
