%{
#include <stdio.h>
int nb = 0;
%}

%%
[A-Z] {nb++;}
\n {return 0;}
%%

int main(){
    printf("Give me smth : ");
    yylex();
    printf("tu as entrer %d lettre majuscule !", nb);
    return 0;
}
int yywrap()
{
    return 1;
}