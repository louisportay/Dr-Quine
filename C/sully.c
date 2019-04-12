#include <stdio.h>
#include <stdlib.h>

int main() {
int i = 5;
if (i <= 0) {return 0;} char f[64]; sprintf(f,"Sully_%d.c",
#ifdef REPLICATE
i
#else
i-1
#endif
); FILE *fs = fopen(f,"w"); if (!fs) {return -1;} char *s = "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$cint main() {%1$cint i = %2$d;%1$cif (i <= 0) {return 0;} char f[64]; sprintf(f,%3$cSully_%%d.c%3$c,%1$c#ifdef REPLICATE%1$ci%1$c#else%1$ci-1%1$c#endif%1$c); FILE *fs = fopen(f,%3$cw%3$c); if (!fs) {return -1;} char *s = %3$c%4$s%3$c; fprintf(fs,s,10,%1$c#ifdef REPLICATE%1$ci%1$c#else%1$ci-1%1$c#endif%1$c,34,s); fclose(fs); char cmd[64]; sprintf(cmd, %3$cclang -Wall -Wextra -Werror %%s%3$c, f); system(cmd); system(%3$c./a.out%3$c); };%1$c"; fprintf(fs,s,10,
#ifdef REPLICATE
i
#else
i-1
#endif
,34,s); fclose(fs); char cmd[64]; sprintf(cmd, "clang -Wall -Wextra -Werror %s", f); system(cmd); system("./a.out"); };
