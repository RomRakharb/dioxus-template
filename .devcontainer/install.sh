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

rustup component add rust-analyzer
npm i -g vscode-langservers-extracted

rm README.md
dx init

echo
echo "---------------------"
echo "install script ends"
echo "---------------------"
echo
