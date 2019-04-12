#include <stdio.h>
/*
	1st comment
*/
void call_me() { }
int main() {
/*
	2nd comment
*/
char *s = "#include <stdio.h>%1$c/*%1$c%2$c1st comment%1$c*/%1$cvoid call_me() { }%1$cint main() {%1$c/*%1$c%2$c2nd comment%1$c*/%1$cchar *s = %3$c%4$s%3$c; call_me(); printf(s,10,9,34,s); }%1$c"; call_me(); printf(s,10,9,34,s); }
