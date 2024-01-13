#!/bin/bash
# Developed By Horlalaycon @ github

if [ "$1" == "" ]
then
echo "_____________________________________"
echo " Oops!!! You Forgot An Ip Address   |"
echo "____________________________________|"
echo " Syntax: bash ipsweep.sh 192.168.0  |" 
echo "____________________________________|"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
