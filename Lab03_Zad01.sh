# prva tocka

clear

echo "Broj uvucenih redova: "

sleep 2

egrep --count "^[[:space:]]" /usr/include/stdio.h

echo ""; echo "Done"

# druga tocka

read a

clear

echo "Broj funckija sa argumentom \"__arg\": "

sleep 2

egrep --count "[[:space:]]__arg[^a-zA-Z0-9]" /usr/include/stdio.h
 
echo ""; echo "Done"
