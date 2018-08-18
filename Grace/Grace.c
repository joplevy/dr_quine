#include <stdio.h>
/*
** outside comment
*/
#define FMT  "#include <stdio.h>%1$c/*%1$c** outside comment%1$c*/%1$c#define FMT  %2$c%3$s%2$c%1$c#define PRINT(fd) fprintf(fd, FMT, 0x0a, 0x22, FMT)%1$c#define START(file)int main(void){ FILE *f; f=fopen(file,%2$cw%2$c); PRINT(f); return 0; }%1$cSTART(%2$cGrace_kid.c%2$c)%1$c"
#define PRINT(fd) fprintf(fd, FMT, 0x0a, 0x22, FMT)
#define START(file)int main(void){ FILE *f; f=fopen(file,"w"); PRINT(f); return 0; }
START("Grace_kid.c")
