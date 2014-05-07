%{
    #include "scan.h"
%}

%option nounput yylineno
%option case-insensitive

%%

"\<html\>"                  printf("HTML_OPEN "); return HTML_OPEN;
"\<head\>"                  printf("HEAD_OPEN "); return HEAD_OPEN;
"\<title\>"                 printf("TITLE_OPEN "); return TITLE_OPEN;
"\<body\>"                  printf("BODY_OPEN "); return BODY_OPEN;
"\<p\>"                     printf("P_OPEN "); return P_OPEN;
"\<ul\>"                    printf("UL_OPEN "); return UL_OPEN;
"\<ol\>"                    printf("OL_OPEN "); return OL_OPEN;
"\<li\>"                    printf("LI_OPEN "); return LI_OPEN;
"\<div\>"                   printf("DIV_OPEN "); return DIV_OPEN;
"\<h1\>"                    printf("H1_OPEN "); return H1_OPEN;
"\<h2\>"                    printf("H2_OPEN "); return H2_OPEN;
"\<h3\>"                    printf("H3_OPEN "); return H3_OPEN;
"\<h4\>"                    printf("H4_OPEN "); return H4_OPEN;
"\<h5\>"                    printf("H5_OPEN "); return H5_OPEN;
"\<h6\>"                    printf("H6_OPEN "); return H6_OPEN;

"\</html\>"                 printf("HTML_CLOSE "); return HTML_CLOSE;
"\</head\>"                 printf("HEAD_CLOSE "); return HEAD_CLOSE;
"\</title\>"                printf("TITLE_CLOSE "); return TITLE_CLOSE;
"\</body\>"                 printf("BODY_CLOSE "); return BODY_CLOSE;
"\</p\>"                    printf("P_CLOSE "); return P_CLOSE;
"\</ul\>"                   printf("UL_CLOSE "); return UL_CLOSE;
"\</ol\>"                   printf("OL_CLOSE "); return OL_CLOSE;
"\</li\>"                   printf("LI_CLOSE "); return LI_CLOSE;
"\</div\>"                  printf("DIV_CLOSE "); return DIV_CLOSE;
"\</h1\>"                   printf("H1_CLOSE "); return H1_CLOSE;
"\</h2\>"                   printf("H2_CLOSE "); return H2_CLOSE;
"\</h3\>"                   printf("H3_CLOSE "); return H3_CLOSE;
"\</h4\>"                   printf("H4_CLOSE "); return H4_CLOSE;
"\</h5\>"                   printf("H5_CLOSE "); return H5_CLOSE;
"\</h6\>"                   printf("H6_CLOSE "); return H6_CLOSE;

"\<hr\>"                    printf("HR "); return HR;

[a-zA-Z][_a-zA-Z0-9]*       printf("IDENTIFICADOR "); return IDENTIFICADOR;
[1-9][0-9]*                 printf("ENTERO "); return ENTERO;
[ \t\r\n]	                              ;
"<!--"([^-]|-[^-]|--+[^->])*-*"-->"       ;
.                           printf("token no reconocido\n");

%%

int yywrap(void)
{
    return 1;
}

