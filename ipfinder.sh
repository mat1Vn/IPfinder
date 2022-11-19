#!/bin/bash
#
# =============================
#
# Script Made By: Matheus (ApX)
# github: github.com/mat1Vn
# instagram: @matheus000l
#
# =============================

while true; do
  ip1=$(( 0 + $RANDOM % 255 ))
  ip2=$(( 0 + $RANDOM % 255 ))
  ip3=$(( 0 + $RANDOM % 255 ))
  ip4=$(( 0 + $RANDOM % 255 ))

  ip="${ip1}.${ip2}.${ip3}.${ip4}"
  echo " "
  echo "======= IP: ${ip} ======="
  echo "  Testando... "
  resl=$(nmap $ip)
  subs="Note: Host seems down."
  if [[ $resl == *"$subs"* ]];
  then
    clear
  else
    echo " ${ip} : IP FIND!!"
    echo "Continue? (y/n)"
    read ch
    if [ $ch == "y" ] || [ $ch == "Y" ]; 
    then
      clear
      continue
    else
      break
    fi
  fi
done
