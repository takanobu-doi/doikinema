TARGETS=doikinema

all: $(TARGETS)

doikinema: K3L.o kinema.o database.o dataset.o nuclear.o
	g++ -o doikinema kinema.o K3L.o database.o dataset.o nuclear.o
.cpp.o:
	g++ -c $<
kinema.o: kinema.hpp
database.o: database.hpp
nuclear.o: nuclear.hpp
clean:
	rm *.o doikinema
