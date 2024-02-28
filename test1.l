%{
#include <stdio.h>
int valide = 0;
%}

%%
[ \t]*[0-9]+[ \t]*[\+|\-|*][ \t]*[0-9]+[ \t]* {valide = 1;}
\n {return 0;}
%%

int main(){
    printf("Give me smth : ");
    yylex();
    if(valide == 1)
    {
        printf("Good !");
    }
    else
    {
        printf("Bad !");
    }
    return 0;
}
int yywrap()
{
    return 1;
}

