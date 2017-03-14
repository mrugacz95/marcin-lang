%{
	#include <stdio.h>
	int yywrap(void);
	int yylex(void);
%}
%s semicolon
%s quote
%s label
%%
\ 							;
mARcin						printf("[]");
Marcin						printf("(");
marciN						printf(")");
MArciN						printf("{");
MarcIN						printf("}");
MARcin						printf(">");
marCIN						printf("<");
marCINmarCIN				printf("<<");
<quote>\ MarciN				{ printf("\""); BEGIN INITIAL; }
<INITIAL>MarciN\ /.+MarciN	{ printf("\""); BEGIN quote; }
<quote>.+/\ MarciN			ECHO;
marcIN\ 					printf("int ");
maRcin\ 					printf("float ");
marcIn						{ printf("if"); BEGIN semicolon; }
maRCin						printf("=");
marCin\ 					printf("goto ");
maRCin\ maRCin				printf("==");
marcin 						printf("cin >> ");
marCiN\ 					BEGIN label;
<label>.+/\n				{ printf("%s:",yytext); BEGIN INITIAL; }
<INITIAL>\n					printf(";\n");
\t 							{ printf("\t"); BEGIN INITIAL; }
MARCIN  					printf("cout<<"); 
[A-Za-z_][A-Za-z0-9_]* 		ECHO;
[0-9]+						ECHO;
[0-9]+.[0-9]*f				ECHO;
.    						{ printf("Unknown token: %s!", yytext); yyterminate(); }
%%
int yywrap(void) {
	printf(";\n return 0; }");
	return 1;
}
int main(){
	printf(" #include<iostream> \n using namespace std; \n int main(){");
	return yylex();
}

