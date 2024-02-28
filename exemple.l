%{
#include <stdio.h>
%}

%%

[ \t] {printf(" espace escaped !");}
byby { exit(0);}
%%
int main()
{
    printf("Donner une chaine : ");
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}
