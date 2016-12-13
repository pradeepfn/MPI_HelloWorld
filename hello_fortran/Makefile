FC=mpif90
CC=gcc
CFLAGS=-g
FFLAGS=-g -I../timer/
LDFLAGS=-g -lpthread -lssl -lcrypto
main: micro.o
	$(FC) -o $@ micro.o timer.o $(LDFLAGS)

micro.o: micro.f90 timer.o
	$(FC) $(FFLAGS) -c micro.f90

timer.o: ../timer/timer.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -rf micro.o 

rclean:
	rm -rf /home/pradeep/testmmap/*
	rm -rf stats/*
