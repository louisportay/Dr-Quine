#include <stdio.h>
/*
	1st comment
*/
void call_me() { }
int main() {
/*
	2nd comment
*/
char *s = "#include <stdio.h>%c/*%c%c1st comment%c*/%cvoid call_me() { }%cint main() {%c/*%c%c2nd comment%c*/%cchar *s = %c%s%c; call_me(); printf(s,10,10,9,10,10,10,10,10,9,10,10,34,s,34,10); }%c"; call_me(); printf(s,10,10,9,10,10,10,10,10,9,10,10,34,s,34,10); }
