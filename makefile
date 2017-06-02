.PHONY: clean all test 
CFLAGS = -Wall -Werror -MP -MMD 

all: bin/equation.exe 

bin/equation.exe: build/main.o build/function.o 
	gcc $(CFLAGS) build/main.o build/function.o -o bin/equation.exe 

build/main.o: src/main.c src/function.h
	gcc $(CFLAGS) -c src/main.c -o build/main.o 

build/function.o: src/function.c src/function.h 
	gcc $(CFLAGS) -c src/function.c -o build/function.o 

test: bin/equation_test.exe 

bin/equation_test.exe: build/test/main.o build/test/function.o
	gcc $(CFLAGS) build/test/main.o build/test/function_test.o build/test/function.o -o bin/equation_test.exe
	
build/test/main.o: test/main.c src/function.h
	gcc $(CFLAGS) -I thirdparty -c test/main.c -o build/test/main.o 
	gcc $(CFLAGS) -c src/function.h -o build/test/otherfunc.o 

build/test/otherfunc_test.o: src/function.h test/function_test.c
	gcc $(CFlAGS) -c -I thirdparty test/otherfunc_test.c -o build/test/otherfunc_test.o 

build/test/otherfunc.o: src/function.h src/function.c
	@gcc $(CFLAGS) -c src/function.c -o build/test/otherfunc.o 


clean:
	@echo "Cleaning files in build directory" 	
	@rm -rf build/*.d build/*.o 
	@rm -rf build/test/*.d build/test/*.o
	@echo "Cleaning binaries"
	@rm -rf bin/equation.exe 
	@rm -rf bin/equation_test.exe 
	@echo "All files have been cleaned."	

-include build/*.d
