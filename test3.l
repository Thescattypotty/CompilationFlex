%{
#include <stdio.h>
int valide = 0;
%}

%%
(10)+1 {valide++;}
\n {return 0;}
%%

int main(){
    printf("Give me smth : ");
    yylex();
    printf("Il existe %d mots valide", valide);
    return 0;
}
int yywrap()
{
    return 1;
}

