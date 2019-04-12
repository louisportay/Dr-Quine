#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
/*
	Killing in the name of !!!
*/
#define MAIN int main() { int fd = open(KIDDIE, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR); if (fd > 0) { dprintf(fd, PROG, 10,9,34,PROG); close(fd); } }
#define PROG "#include <stdio.h>%1$c#include <unistd.h>%1$c#include <fcntl.h>%1$c/*%1$c%2$cKilling in the name of !!!%1$c*/%1$c#define MAIN int main() { int fd = open(KIDDIE, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR); if (fd > 0) { dprintf(fd, PROG, 10,9,34,PROG); close(fd); } }%1$c#define PROG %3$c%4$s%3$c%1$c#define KIDDIE %3$cGrace_kid.c%3$c%1$c%1$cMAIN%1$c"
#define KIDDIE "Grace_kid.c"

MAIN
