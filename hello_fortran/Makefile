FC=mpif90
CC=gcc
CFLAGS=-g
FFLAGS=-g 
LDFLAGS=-g -lpthread -lssl -lcrypto
main: micro.o
	$(FC) -o $@ $^ $(LDFLAGS)

micro.o: micro.f90 
	$(FC) $(FFLAGS) -c $<

clean:
	rm -rf micro.o 

rclean:
	rm -rf /home/pradeep/testmmap/*
	rm -rf stats/*
