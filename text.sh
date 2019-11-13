#!/bin/bash
function text(){
	key="REPLACE WITH YOUR KEY"
	num=$1
	shift 1 
	message=$*

	#phonebook lookup

	function match(){
		awk -v s1="${1}" -v s2="${2}" 'BEGIN {
			if ( tolower(s1) == tolower(s2) ){
				print "match"
			} else {
				print "unmatch"
			}
		}'
	}

	if [ `match ${num} 'me'` == "match" ] ; then  
		num="2025945672"
	fi

	if [[ ${num} =~ ^\+[0-9]{12}$ ]] || [[ ${num} =~ ^\+[0-9]{11}$ ]] || [[ ${num} =~ ^[0-9]{10}$ ]] ; then 
		curl -X POST https://textbelt.com/text        --data-urlencode phone='2025945672'        --data-urlencode message="${message}"        -d key="${key}"; 
		echo -e "\nNubmer: ${num}"
		echo "Text: ${message}"
	fi
}
