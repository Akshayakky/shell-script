#!/bin/bash -x

# READ THE FILE EXTENSION AND PRINT FILE TYPE
for fileName in $(ls)
do
	#READ FILE EXTENSION
	file=${fileName##*\.}
	case "$file" in
		java) echo "$file : Java source file"
			;;
		o)    echo "$file : Object file"
			;;
		sh)   echo "$file : Shell script" 
			;;
		txt) echo "$file : Text file"
			;;
		*)    echo "$file : Not processed"
			;;
	esac
done
