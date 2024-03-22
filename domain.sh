#!/usr/bin/bash

ping -c1 $1 > /dev/null 
domain=$1
new_domain=$(echo "${domain%%.*}")

if [[ $? -eq 0 ]]; then
   echo "there's connection to $new_domain" 
else 
	echo "there's no connection to $new_domain"
fi

## try to see why doesn't workw with ping -c1 $host

##cat <<EOF 
#You can use the ${} syntax in Bash to extract substrings from a string. Here’s an example of how you can extract the substring “google” from the string “google.com”:
##
#string="google.com"
#echo "${string%%.*}"
#Copiar
#This will print “google” to the console. The ${string%%.*} syntax removes everything after the first period in the string.
#
#I hope this helps! Let me know if you have any other questions.
#EOF 
