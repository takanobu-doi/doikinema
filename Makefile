TARGETS=doikinema

all: $(TARGETS)

doikinema: K3L.o kinema.o database.o dataset.o nuclear.o
	g++ -o doikinema kinema.o K3L.o database.o dataset.o nuclear.o
.cc.o:
	g++ -c $<
clean:
	rm *.o doikinema
