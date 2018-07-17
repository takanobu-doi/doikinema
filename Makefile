TARGETS=doikinema

all: $(TARGETS)

doikinema: K3L.o kinema.o database.o dataset.o nuclear.o
	g++ -o doikinema kinema.o K3L.o database.o dataset.o nuclear.o
.cpp.o:
	g++ -c $<
.cc.o:
	g++ -c $<
database.o: database.hpp
kinema.o: kinema.hpp
nuclear.o: nuclear.hpp
clean:
	rm *.o doikinema
