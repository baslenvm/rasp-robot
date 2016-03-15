
LIBS  = -lpthread
CFLAGS = -O3

# Should be equivalent to your list of C files, if you don't build selectively
SRC=$(wildcard *.cpp)

robot: $(SRC)
	g++ -o $@ $^ $(CFLAGS) $(LIBS)
