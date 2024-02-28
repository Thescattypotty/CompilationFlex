%{
#include <stdio.h>
%}

%%

"cad" {printf("C'est a dire \n");}
"ssi" {printf("si et seulement si");}
"afd" {printf("automate à états finis déterministe");}

%%

int main()
{
    printf("Donner une chaine ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}