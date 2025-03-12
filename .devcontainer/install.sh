#! /usr/bin/bash

echo
echo "---------------------"
echo "starts install script"
echo "---------------------"
echo

sudo apt update && sudo apt -y upgrade
sudo apt-get install -y software-properties-common
sudo apt update

sudo add-apt-repository -y ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix

cargo install bacon
cargo install cargo-binstall
cargo binstall -y dioxus-cli

curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-linux-x64
chmod +x tailwindcss-linux-x64
mv tailwindcss-linux-x64 tailwindcss

rustup component add rust-analyzer
npm i -g vscode-langservers-extracted

rm README.md
dx init

echo
echo "---------------------"
echo "install script ends"
echo "---------------------"
echo
