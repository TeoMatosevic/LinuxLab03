cat >Top10 <<EOF
Linux Mint 19.1
Ubuntu 20.4
Debian GNU/Linux 10.7
Mageia 7.1
Fedora 33
openSUSE Leap 15.2
Arch Linux
CentOS 8
PCLinuxOS
Slackware Linux 14.2
FreeBSD
EOF

# prva tocka

cat Top10
echo ""

sed -i -r "/^[^0-9]*$/d" Top10

cat Top10
echo ""

# druga tocka

sed -i -r "s/([^[:digit:]]*)([[:digit:]])(.*)/\2\3\1/" Top10

cat Top10
echo ""

# treca tocka

sed -i -r "s/([[:upper:]])/\L\1/g" Top10

cat Top10
echo ""

# cetvrta tocka

sed -i -r "s/([aeiou])/\u\1/g" Top10

cat Top10
