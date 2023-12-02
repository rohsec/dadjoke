#!/bin/bash

fetch_joke()
{
	resp=$(curl -s -H "User-Agent: dadjokes :) (https://github.com/rohsec/dadjokes)" -H "Accept: application/json" https://icanhazdadjoke.com/)
#echo "Result : $resp\n"
	if [[ $(echo $resp|jq -r '.status') -eq 200 ]]
	then
#		printf "\n══════════════════════════════════════════════════════════════════"
		printf "$(echo $resp|jq -r '.joke')\n"
#		printf "\n══════════════════════════════════════════════════════════════════"
	else
		printf "\n Opps!! No jokes for you this time :( !!"
	fi
}


######### Main Script Start ############
fetch_joke
