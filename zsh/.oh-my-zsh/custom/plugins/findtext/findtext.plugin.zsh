# findtext greps for strings recursivly at specified or working dir

function findtext {
	if [[ -z $1 ]]; then
		echo "Usage: findtext [-d \$dir] \$pattern"
	elif [[ $1 == "-d" ]]; then
		grep -rnw "$2" -e "$3"
	else
		grep -rnw "`pwd`" -e "$1"
	fi
}
