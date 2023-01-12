# prva tocka

clear 

echo "Imena svih python funkcija: "

sleep 2

(sudo find / -name "*.py" -exec egrep "^def .*" {} +) > /tmp/neki_file; sed -r "s/^(.*def[[:space:]])([^(]+)(.*)$/\2/" /tmp/neki_file

echo ""; echo "Done"

# druga tocka

read a

clear

echo "Sve potprocesorske naredbe u c: "

sleep 2

(sudo find / -name "*.[ch]" -exec egrep "^#[^/ ].*[^;]$" {} +) > /tmp/neki_drugi_file; sed -r "s/.*(#[^[:space:]].*)/\1/" /tmp/neki_drugi_file

echo ""; echo "Done"

# treca tocka

read a

clear

echo "Sve datoteke koje sadrze \"include\" i redni broj redka u kojem se nalazi: "

sleep 2

#(sudo find / -type f ! -executable -exec file {} +) | grep ASCII >/home/teofer/Documents/all_files

for i in $(cat /home/teofer/Documents/all_files) 
do
	echo $i > /tmp/b 
	if [[ ! $(cat /tmp/b) =~ ^/ ]] 
	then 
		continue 
	fi 
	sed -r "s/(.*):(.*)/\1/" /tmp/b > /tmp/c
	egrep -n "include" $(sudo cat /tmp/c) 
done

echo "": echo "Done"
