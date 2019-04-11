#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
/*
	Killing in the name of !!!
*/
#define MAIN int main() { int fd = open(KIDDIE, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR); if (fd > 0) { dprintf(fd, PROG, 10,10,10,10,9,10,10,10,34,PROG,34,10,34,34,10,10,10); close(fd); } }
#define PROG "#include <stdio.h>%c#include <unistd.h>%c#include <fcntl.h>%c/*%c%cKilling in the name of !!!%c*/%c#define MAIN int main() { int fd = open(KIDDIE, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR); if (fd > 0) { dprintf(fd, PROG, 10,10,10,10,9,10,10,10,34,PROG,34,10,34,34,10,10,10); close(fd); } }%c#define PROG %c%s%c%c#define KIDDIE %cGrace_kid.c%c%c%cMAIN%c"
#define KIDDIE "Grace_kid.c"

MAIN
