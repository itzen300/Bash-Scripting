#! /bin/bash

#This is a designed to to find system with open port like -> 5505
nmap -sT 192.168.1.102 -p 8080 > /dev/null -oG tara 
cat tara | grep open > tara
cat tara

$sudo ./tara
=> Host : 192.168.1.102() Ports : 8080.... nmap scan result

note : learn the {python + bash} = better backend exploit.

#! /bin/bash
#This is another designed bash script designed to find ports under manual set ranges
echo "Enter the starting IP address to scan....: "
read First_IP
echo "Enter the last octet of the last IP : "
read Last_Ocatet_IP
echo "Enter the port number you want to scan for : "
read Port 

nmap -sT $First_IP-$Last_octet_IP -p $Port > /dev/null -oG tara
cat tara | grep open > tara
cat tara

$sudo chmod 744 tara.sh OR $sudo chmod +x tara.sh
$sudo ./tara.sh 
=> Enter the starting IP adress to scan ...:
|-> 192.168.1.102
=> Enter the last octet of the last IP :
|-> 255
=> Enter the port number you want to scan for :
|-> 8080

=> Host : 192.168.1.102() Ports : 8080 /open/tcp.... nmap scan result
