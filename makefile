readme.md: pogadjanje.sh
	echo "Igra pogadjanja sa brojem linija:" > readme.md
	wc -l pogadjanje.sh | egrep -o "[0-9]+" >> readme.md
date >> readme.md
