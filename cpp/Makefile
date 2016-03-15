LIBS  = -lpthread
CFLAGS = -O

# Should be equivalent to your list of C files, if you don't build selectively
SRC=$(wildcard *.cpp)

robot: $(SRC)
	g++ -o $@ $^ $(CFLAGS) $(LIBS)
