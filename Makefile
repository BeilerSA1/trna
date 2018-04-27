# There are two targets: balanced.o and test

# TODO: create the target for balanced.o, using
# the following command to create the object file:
# g++ -std=c++11 -g -c balanced.cpp -o balanced.o


# The "balanced.o" after the "test:" is a dependency:
# make will run the balanced.o target (if out of date)
# before running the commands for test
test: balanced.o
	g++ -std=c++11 -g *.o balancedTest.cpp -o balancedTest
	./balancedTest
CXXFLAGS=-std=c++11 -fprofile-arcs -ftest-coverage -g

balanced.o:
	g++ $(CXXFLAGS) -c balanced.cpp -o balanced.o

test: balanced.o
	g++ $(CXXFLAGS) *.o balancedTest.cpp -o balancedTest
	./balancedTest