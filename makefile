all: cir.l cir.y draw.c 
	lex cir.l
	yacc -d cir.y
	gcc -o ac_circuit_solver ac.h y.tab.c lex.yy.c draw.c

clean:
	rm *.tab.*
	rm *.yy.*
