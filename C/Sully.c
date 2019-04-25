#include <stdio.h>
#include <stdlib.h>

int main() {
int i = 5;
#ifndef REPLICATE
i--;
#endif
char f[64]; sprintf(f,"Sully_%d.c",i);
FILE *fs = fopen(f,"w"); if (!fs) {return -1;}
char *s = "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$cint main() {%1$cint i = %2$d;%1$c#ifndef REPLICATE%1$ci--;%1$c#endif%1$cchar f[64]; sprintf(f,%3$cSully_%%d.c%3$c,i);%1$cFILE *fs = fopen(f,%3$cw%3$c); if (!fs) {return -1;}%1$cchar *s = %3$c%4$s%3$c;%1$cfprintf(fs,s,10,i,34,s); fclose(fs);%1$cif (i > 0) { char o[64]; sprintf(o, %3$cSully_%%d%3$c, i); char cmd[64]; sprintf(cmd,%3$cclang -Wall -Wextra -Werror %%s -o %%s && ./%%s%3$c,f,o,o); system(cmd); } }%1$c";
fprintf(fs,s,10,i,34,s); fclose(fs);
if (i > 0) { char o[64]; sprintf(o, "Sully_%d", i); char cmd[64]; sprintf(cmd,"clang -Wall -Wextra -Werror %s -o %s && ./%s",f,o,o); system(cmd); } }
