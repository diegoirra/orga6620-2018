CC=gcc
CFLAGS := -g -Wall -std=c99
INPUT=tp0.c
OUTPUT=tp0
TESTS_DIR=tests

compile:
	$(CC) $(CFLAGS) -o $(OUTPUT) $(INPUT) -lm	

asm:
	$(CC) $(CFLAGS) -O0 -S -mrnames $(INPUT)

test: compile
	#TEST imagen por defecto. Se crea archivo en /tests/
	./$(OUTPUT) -o $(TESTS_DIR)/uno.pgm
	#
	
	#TEST imagen 2. 
	./$(OUTPUT) -o $(TESTS_DIR)/dos.pgm -c 0.282-0.007i -w 0.005 -H 0.005
	#
	
	#TEST Generar imagen con nombre fractales.pgm en la test
	./$(OUTPUT) -o $(TESTS_DIR)/fractales.pgm
	#
	
	#TEST imprimir por pantalla 0
	./$(OUTPUT) -c 10+0i -r 1x1
	#
	
	#TEST complejo incorrecto
	./$(OUTPUT) -s 0+1 -o $(TESTS_DIR)/complejo_incorrecto.pgm
	#
		
	#TEST ruta invalida del archivo (chequear)
	./$(OUTPUT) -o $(TESTS_DIR)/uno.pgm
	#
	
	#TEST numero complejo incorrecto
	./$(OUTPUT) -c 1+3 -o $(TESTS_DIR)/comp.pgm
	#

clean:
	rm -f $(OUTPUT)
	rm -f $(OUTPUT).s
	rm -f $(TESTS_DIR)/*.res
