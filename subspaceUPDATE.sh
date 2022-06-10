#!/bin/bash
echo "=================================================="
echo -e "\033[0;35m"
echo " ███╗░░░███╗░█████╗░██████╗░██╗░█████╗░  ███╗░░██╗░█████╗░██████╗░███████╗░██████╗ ";
echo " ████╗░████║██╔══██╗██╔══██╗██║██╔══██╗  ████╗░██║██╔══██╗██╔══██╗██╔════╝██╔════╝ ";
echo " ██╔████╔██║███████║██████╔╝██║██║░░██║  ██╔██╗██║██║░░██║██║░░██║█████╗░░╚█████╗░ ";
echo " ██║╚██╔╝██║██╔══██║██╔══██╗╚═╝██║░░██║  ██║╚████║██║░░██║██║░░██║██╔══╝░░░╚═══██╗ ";
echo " ██║░╚═╝░██║██║░░██║██║░░██║██╗╚█████╔╝  ██║░╚███║╚█████╔╝██████╔╝███████╗██████╔╝ ";
echo " ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░╚════╝░  ╚═╝░░╚══╝░╚════╝░╚═════╝░╚══════╝╚═════╝░ ";
echo -e "\e[0m"
echo "=================================================="
sleep 2
cd $HOME
wget -O subspace-node https://github.com/subspace/subspace/releases/download/gemini-1b-2022-june-05/subspace-node-ubuntu-x86_64-gemini-1b-2022-june-05
wget -O subspace-farmer https://github.com/subspace/subspace/releases/download/gemini-1b-2022-june-05/subspace-farmer-ubuntu-x86_64-gemini-1b-2022-june-05
chmod +x subspace-node
chmod +x subspace-farmer
mv subspace-node /usr/local/bin/
mv subspace-farmer /usr/local/bin/
systemctl restart subspaced
