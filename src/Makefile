TARGET = ebclient
SRC = $(wildcard *.c *.cpp)
OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SRC)))
CC = gcc
CPP = g++
INCLUDE =  -I. 
LINKPARAM = -static -pthread -L. -lebu -lmxml -lz
CFLAGS = -fPIC

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

%.o: %.cpp
	$(CPP) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(TARGET):$(OBJS)
	libtool --mode=link --tag CXX $(CPP) -o $(TARGET) $(LINKPARAM) $(OBJS)

clean:
	rm $(OBJS) $(TARGET)
