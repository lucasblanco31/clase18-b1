#!/bin/bash

mkdir -p Level1/{Level2a,Level2b,Level2c,Level2d,Level2e}/{Level3a,Level3b,Level3c,Level3d,Level3e};
cd Level1;

for i in $(seq 18);
do
    echo "Sigue buscando" > $i.txt;
done

echo Level2{a,b,c}/Level3{a,b} | xargs -n 1 cp {1,4,5}.txt;

echo Level2{d,e,c}/Level3{c,e} | xargs -n 1 cp {10,8,2}.txt;

echo Level2{c,d,e}/Level3{a,d} | xargs -n 1 cp {3,7,14}.txt;

echo Level2{b,e}/Level3{c,d} | xargs -n 1 cp {6,15,18}.txt;

echo Level2{a,d,e}/Level3{b,e} | xargs -n 1 cp {9,17,13}.txt;

echo Level2{a,d}/Level3{a,b,c,d} | xargs -n 1 cp {11,16,12}.txt;

rm *.txt;

for i in $(seq 18);
do
    echo "Este si" > $i.txt;
done

echo Level2d/Level3d | xargs -n 1 cp {1,4,5}.txt;

echo Level2a/Level3d | xargs -n 1 cp {10,8,2}.txt;

echo Level2b/Level3e | xargs -n 1 cp {3,7,14}.txt;

echo Level2a/Level3e | xargs -n 1 cp {6,15,18}.txt;

echo Level2b/Level3a | xargs -n 1 cp {9,17,13}.txt;

echo Level2b/Level3e | xargs -n 1 cp {11,16,12}.txt;

rm *.txt;

echo -e "Usando los comandos cd, ls y cat buscar el archivo txt que diga: Este si\n 1.txt: ARENA\n 2.txt: ARRIETA\n 3.txt: BERTINETTI\n 4.txt: BOASSO\n 5.txt: BRESSAN\n 6.txt: CARRIZO\n 7.txt: COLLANTE\n 8.txt: DE DIEGO\n 9.txt: LEITON\n 10.txt: LUNA\n 11.txt: MAINERO\n 12.txt: MOLINA\n 13.txt: PAZ\n 14.txt: RAFUL\n 15.txt: RIOS\n 16.txt: SOBRINO\n 17.txt: VILLAREAL" > instrucciones.txt
