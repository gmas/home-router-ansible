#!/bin/bash
ovpn_file="/home/gmas/Downloads/AirVPN_Europe_UDP-443.ovpn"
region="europe"
tags=(ca cert key tls-auth)

for tag in "${tags[@]}"
do
  echo $tag
  sed -n "/<$tag>/,/<\/$tag>/p" $ovpn_file | sed "s/<\/*$tag>//" > "/home/gmas/ovpn/airvpn/$region.$tag"
done
