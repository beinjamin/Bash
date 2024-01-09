#!/bin/bash

echo "Veuillez entrer une somme :"
read somme

echo "Choisissez la conversion :"
echo "1. Euro vers CFA"
echo "2. CFA vers Euro"
read choix

if [ $choix -eq 1 ]; then
    resultat=$(echo "scale=2; $somme * 650" | bc)
    echo "$somme Euro(s) équivaut à $resultat CFA"
elif [ $choix -eq 2 ]; then
    resultat=$(echo "scale=2; $somme * 0.2" | bc)
    echo "$somme CFA équivaut à $resultat Euro"
else
    echo "Choix invalide"
fi
