#!/bin/bash
echo '' && echo '' && echo '----------------------------------------' && echo '** RUNNING PACMAN UPDATE **' && echo '----------------------------------------' && echo '' && echo '' && sudo pacman -Syu
echo '' && echo '' && echo '----------------------------------------' && echo '** RUNNING YAOURT UPDATE **' && echo '----------------------------------------' && echo '' && echo '' && yaourt -Syu
echo '' && echo '' && echo '----------------------------------------' && echo '** REMOVING UNUSED PACKAGES **' && echo '----------------------------------------' && echo '' && echo '' && sudo pacman -Rns $(pacman -Qtdq)
echo '' && echo '' && echo '----------------------------------------' && echo '** DONE **' && echo '----------------------------------------' && echo '' && echo ''
sleep infinity
