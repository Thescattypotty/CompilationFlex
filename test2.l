%{
#include <stdio.h>
%}

%%
[a-zA-Z]{3}[0-9]{2,5} {printf("mot de 3 lettres suivi de 2 a 5 chiffres :  %s", yytext);}
[a-zA-Z0-9]{3,9} {printf("Un mot consitué de 3 a 9 caracteres est : %s", yytext);}
[+|-]?[0-9]+ {printf("Un nombre entier avec signe + ou - ou sans signe est : %s", yytext);}
[ \t]
\n {return 0;}
%%

int main(){
    printf("Give me smth : ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}

