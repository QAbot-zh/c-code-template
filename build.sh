set -e
export TIMEFMT=$'\e[1;34m ~~~~~~~~~~~~~~~~~ \e[0m\n\e[1;34m    ...Finish...    \e[0m\n\e[1;34m ~~~~~~~~~~~~~~~~~ \e[0m\nthe program [\e[1;34m%J\e[0m] consumes: \nuser\t%U\nsys\t%S'
cd build
cmake ..
make
cd ..
echo "\e[1;34m ~~~~~~~~~~~~~~~~~ \e[0m"
echo "\e[1;34m    ...Start...    \e[0m"
echo "\e[1;34m ~~~~~~~~~~~~~~~~~ \e[0m"
time ./test