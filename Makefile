TARGETS=doikinema

all: $(TARGETS)

doikinema: K3L.o kinema.o database.o dataset.o nuclear.o
	g++ -o doikinema kinema.o K3L.o database.o dataset.o nuclear.o

kinema.o: kinema.cpp
	g++ -c kinema.cpp
kinema.o: kinema.hpp

K3L.o: K3L.cpp
	g++ -c K3L.cpp
database.o: database.cpp
	g++ -c database.cpp
database.o: database.hpp

dataset.o: dataset.cpp
	g++ -c dataset.cpp
nuclear.o: nuclear.cpp
	g++ -c nuclear.cpp
nuclear.o: nuclear.hpp

clean:
	rm *.o doikinema
