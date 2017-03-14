all: marcin.marcin compileLEX
	gcc lex.yy.c -lfl -o marcinProgram
	./marcinProgram < marcin.marcin > marcin.cpp
	rm marcinProgram
	g++ marcin.cpp -o marcin
	rm marcin.cpp
	echo "Now run ./marcin"
compileLEX: lex.yy.c
	flex marcin.lex
