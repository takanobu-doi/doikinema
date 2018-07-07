TARGETS=kinematics

all: $(TARGETS)

kinematics:
	g++ -o $@ kinema.o K3L.o database.o dateset.o nuclear.o

.cc.o:
	g++ -c $<
