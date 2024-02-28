%{
#include <stdio.h>
int po = 0;
int pf = 0;
%}

%%
    
"(" { po ++; }
")" { pf ++; }
"\n" {return 0;}

%%

int main(){
    printf("Donner une chaine ");
    yylex();
    if(po != pf)
    {
        printf("Erreur");
    }
    else{
        printf("egaux");
    }
    return 0;
}

int yywrap(){
    return 1;
}
