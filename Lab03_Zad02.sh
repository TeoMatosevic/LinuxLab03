# prva tocka

clear

echo "Sve datoteke koje pocinju sa c te nakon toga imaju neki broj slova pa dva broja pa tocku i onda barem jedno slovo iza tocke: "

sleep 2

#ako se trazi da nema veze u kojem su redosljedu brojevi i slova prije tocke:
#sudo ls -R -1 / | egrep "^c[[:alpha:]]*[[:digit:]][[:alpha:]]*[[:digit:]][[:alpha:]]*\.[[:alpha:]]+$"

sudo ls -R -1 / | egrep "^c[[:alpha:]]*[[:digit:]][[:digit:]]\.[[:alpha:]]+$"

echo ""; echo "Done"

# druga tocka

read a

clear

echo "Sve datoteke koje ne sadrze mala slova od a do k a imaju barem jednu znamenke: "

sleep 2

sudo ls -R -1 / | egrep "^[^a-k]*[[:digit:]]+[^a-k]*$"

echo ""; echo "Done"
