#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

int main() { int i = 5;
int fd; char n[32]; sprintf(n, "Sully_%d.c", i - 1); char *s = "#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%c#include <stdlib.h>%c%cint main() { int i = %d;%cint fd; char n[32]; sprintf(n, %cSully_%cd.c%c, i - 1); char *s = %c%s%c; if (i > 0) { fd = open(n, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR); dprintf(fd,s,10,10,10,10,10,i - 1,10,34,37,34,34,s,34,34,37,34,34,34,10); close(fd); char cmd[64]; sprintf(cmd, %cclang -Wall -Wextra -Werror %cs%c, n); system(cmd); system(%c./a.out%c); } }%c"; if (i > 0) { fd = open(n, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR); dprintf(fd,s,10,10,10,10,10,i - 1,10,34,37,34,34,s,34,34,37,34,34,34,10); close(fd); char cmd[64]; sprintf(cmd, "clang -Wall -Wextra -Werror %s", n); system(cmd); system("./a.out"); } }
