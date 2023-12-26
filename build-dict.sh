#! /bin/sh

set -ex

DICT_NAME=aspell6-en-2020.12.07-0

curl -LO "https://ftp.gnu.org/gnu/aspell/dict/en/$DICT_NAME.tar.bz2"
tar xjf "$DICT_NAME.tar.bz2"

cd "$DICT_NAME"

cat > Makefile <<EOF
ASPELL = C:/Aspell/bin/aspell
ASPELL_FLAGS =
PREZIP = C:/Aspell/bin/prezip-bin
DESTDIR =
dictdir = C:/Aspell/lib/aspell-0.60
datadir = C:/Aspell/lib/aspell-0.60
EOF

cat Makefile.pre >> Makefile

make install
