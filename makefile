.PHONY: clean all test 
CFLAGS = -Wall -Werror -MP -MMD 

all: 
	make bin/equation.exe 
	bin/equation.exe 

bin/equation.exe: build/main.o build/function.o 
	g++ $(CFLAGS) build/main.o build/function.o -o bin/equation.exe 

build/main.o: src/main.cpp src/function.h
	g++ $(CFLAGS) -c src/main.cpp -o build/main.o 

build/function.o: src/function.cpp src/function.h 
	g++ $(CFLAGS) -c src/function.cpp -o build/function.o 

clean:
	@echo "Cleaning files in build directory" 	
	@rm -rf build/*.d build/*.o 
	@echo "Cleaning binaries"
	@rm -rf bin/equation.exe 
	@echo "All files have been cleaned."	

-include build/*.d
