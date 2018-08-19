#include <stdio.h>
#include <stdlib.h>
/*
** outside comment
*/
#define FMT  "#include <stdio.h>%1$c#include <stdlib.h>%1$c/*%1$c** outside comment%1$c*/%1$c#define FMT  %2$c%3$s%2$c%1$c%1$cint main(void){%1$c    int i = %4$d;%1$c    char *filename;%1$c    FILE *f;%1$c    char *cmd;%1$c%1$c    i--;%1$c    if (i >= 0){%1$c        asprintf(&filename, %2$cSully_%%d.c%2$c, i);%1$c        f = fopen(filename ,%2$cw%2$c);%1$c        fprintf(f, FMT, 0x0a, 0x22, FMT, i);%1$c        fclose(f);%1$c        asprintf(&cmd, %2$cgcc -Wall -Wextra -Werror Sully_%%1$d.c -o Sully_%%1$d && ./Sully_%%1$d%2$c, i);%1$c        system(cmd);%1$c    }%1$c    return 0;%1$c}%1$c"

int main(void){
    int i = 5;
    char *filename;
    FILE *f;
    char *cmd;

    i--;
    if (i >= 0){
        asprintf(&filename, "Sully_%d.c", i);
        f = fopen(filename ,"w");
        fprintf(f, FMT, 0x0a, 0x22, FMT, i);
        fclose(f);
        asprintf(&cmd, "gcc -Wall -Wextra -Werror Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d", i);
        system(cmd);
    }
    return 0;
}
