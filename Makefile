# Student's Makefile for the CS:APP Performance Lab
TEAM = bovik
VERSION = 1
HANDINDIR = 

CC = gcc
CFLAGS = -Wall -O2 -g -m32 -march=i386 -Wall -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer
LIBS = -lm

OBJS = driver.o kernels.o fcyc.o clock.o

all: driver

driver: $(OBJS) fcyc.h clock.h defs.h config.h
	$(CC) $(CFLAGS) -S kernels.c
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o driver

handin:
	cp kernels.c $(HANDINDIR)/$(TEAM)-$(VERSION)-kernels.c

clean: 
	-rm -f $(OBJS) driver core *~ *.o


