#
# This is a makefile for Project 1
#

CXX = g++
CXXFLAGS = -Wall -g

all: main.o myfunc.o
	$(CXX) $(CXXFLAGS) -o myexe main.o myfunc.o

main.o: main.cpp myfunc.h
	$(CXX) $(CXXFLAGS) -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
	$(CXX) $(CXXFLAGS) -c myfunc.cpp

clean:
	rm -f *.o *.exe myexe

