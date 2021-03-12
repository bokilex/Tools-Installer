#!/bin/bash
input1=""
input2=""
bool1=False
toor=$(whoami)
if ((whoami != "root"))
then
    echo "You need to run this as root!"
    exit
else
    echo "Note: this only works if you have apt!"
fi
echo "Do you want to install tools for proggramers or ethical hackers(1/2)?"
read input1

echo "Proceed(y/n)?"
read input2
if ((input2 == "y"))
then
    bool1=True
elif((input2 == "n"))
then
    exit
else
    echo "Incorect answer."
    exit
fi
echo "Done"
if ((input1 == "1"))
then
    cd /opt
    mkdir hacking_tools
    cd hacking_tools
    sudo apt update && sudo apt upgrade -y
    sudo apt install curl
    sudo apt install wget 
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
    sudo apt install hydra
    sudo apt install nmap 
    sudo apt install john 
    sudo apt install hashcat
    mkdir wordlists
    sudo apt install gobuster
    sudo apt install dirb
    sudo apt install ettercap
    sudo apt install aircrack
    sudo apt install sqlmap
    sudo apt install git
    cd wordlists
    mkdir brute_force
    cd brute_force
    wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
elif ((input1 == "2"))
then
    sudo apt update && sudo apt upgrade -y
    sudo apt install python2
    sudo apt install python3
    sudo apt install wget
    sudo apt install curl
    sudo apt install vim
    sudo apt install nano
    sudo apt install c++
    sudo apt install gcc
    sudo apt install git
else
    echo "Incorect answer."
    exit
fi
