#/bin/bash
set -e

cd lib/ebu
./configure && make && sudo make install

cd ../libmxml
./configure && make && sudo make install

which apt && sudo apt install lib32z1-dev || echo "Please install a static zlib (libz.a) onto your system and ensure it is available on the linker path." >&2

