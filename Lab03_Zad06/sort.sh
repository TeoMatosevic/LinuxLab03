cd /tmp/OKOSL/downloads

for file in *
do
	if [[ "$file" =~ .*_.* ]]
	then 
		ime_predmeta=$(echo "$file" | sed -r "s/_(.*)//")
		if [[ ! -d ../"$ime_predmeta" ]]
		then
			mkdir ../"$ime_predmeta"
		fi
		mv "$file" ../"$ime_predmeta"/"$file"
	else
		if [[ ! -d ../razonoda ]]
		then
			mkdir ../razonoda
		fi
		mv "$file" ../razonoda/"$file"
	fi
done

echo "Razvrstan downloads folder."
sleep 2

cd ../razonoda

for file_r in *
do
	if [[ "$file_r" =~ \.pdf ]] || [[ "$file_r" =~ \.epub ]]
	then
		if [[ ! -d ../knjige ]]
		then
			mkdir ../knjige
		fi
		mv "$file_r" ../knjige/"$file_r"
	fi
	if [[ "$file_r" =~ \.jpg ]] || [[ "$file_r" =~ \.jpeg ]]
        then
                if [[ ! -d ../slike ]]
                then
                        mkdir ../slike
                fi
                mv "$file_r" ../slike/"$file_r"
        fi
	if [[ "$file_r" =~ \.mp3 ]]
        then
                if [[ ! -d ../muzika ]]
                then
                        mkdir ../muzika
                fi
                mv "$file_r" ../muzika/"$file_r"
        fi
done

echo "Razvrstan razonoda folder."
