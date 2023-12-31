# Makefile pour TP1.
# Adaptez ce fichier au besoin.

# Options standard.
#OPTIONS=-Wall -q

# L'option -g permet de générer les infos de débogage.
# Décommentez la ligne suivante si vous désirez utiliser un débogueur.
OPTIONS = -g -O2 -Wall

# Les options -O, -O1, -O2, -O3 permettent d'optimiser le code binaire produit.
# Décommentez la ligne suivante si avant la remise finale
#OPTIONS = -O2 -Wall


# Syntaxe : cible : dépendance1 dépendance2 ...
# Ensuite, la ou les ligne(s) débutant par une tabulation (\t) donne les commandes pour construire une cible
tp1: tp1.cpp immeuble.o point.o station.o tableau.o
	g++ ${OPTIONS} -o tp1 tp1.cpp immeuble.o point.o station.o tableau.o

immeuble.o: immeuble.h immeuble.cpp
	g++ $(OPTIONS) -c -o immeuble.o immeuble.cpp
	
point.o: point.h point.cpp
	g++ $(OPTIONS) -c -o point.o point.cpp

station.o: station.h station.cpp
	g++ $(OPTIONS) -c -o station.o station.cpp

tableau.o: tableau.h tableau.cpp
	g++ $(OPTIONS) -c -o tableau.o tableau.cpp

clean :
	rm -f *.o
	rm -f tp1
	rm -f *~

test:
	./tests/evaluer.sh

