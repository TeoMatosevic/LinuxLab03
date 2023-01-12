# prva tocka

echo "Izmjene imena"
sleep 2

sudo find / -name "PNG-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" > /tmp/aaaa; for i in $(cat /tmp/aaaa); do rename "s/PNG-([[:digit:]]{2})([[:digit:]]{2})([[:digit:]]{4})/\1_\2_\3.png/" $i; done

echo ""; echo "Done"
