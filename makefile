scan:
	lex scan.l
	gcc scan.c lex.yy.c -ll -o scan

clean:
	rm scan
	rm lex.yy.c
