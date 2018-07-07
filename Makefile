TARGETS=kinematics

all: $(TARGETS)

kinematics:
	g++ -o $@ *.o

.cc.o:
	g++ -c $<
