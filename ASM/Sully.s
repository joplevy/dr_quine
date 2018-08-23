;outside comment
%define COUNT 5
DEFAULT REL
section .data

msg:    db      ";outside comment%1$c%%define COUNT %4$d%1$cDEFAULT REL%1$csection .data%1$c%1$cmsg:    db      %2$c%3$s%2$c, 0%1$cfmt:    db      %2$cSully_%%d.s%2$c, 0%1$ccmpfmt: db      %2$c~/.brew/bin/nasm -f macho64 Sully_%%1$d.s && gcc -Wall -Wextra -Werror Sully_%%1$d.o -o Sully_%%1$d && ./Sully_%%1$d%2$c, 0%1$cmode:   db      %2$cw+%2$c, 0%1$cnl:     db      0x0a%1$cquote:  db      0x22%1$cexname: db      %2$cSully.s%2$c%1$cfname:  db      __FILE__%1$c%1$csection .bss%1$c%1$cfile:   resb      16%1$citer:   resb      1%1$ccomp:   resb      32%1$cfd:     resb      1%1$c%1$csection .text%1$cglobal start%1$cglobal _main%1$cextern _fprintf%1$cextern _sprintf%1$cextern _fclose%1$cextern _fopen%1$cextern _system%1$cextern _strcmp%1$c%1$cstart:%1$c    call _main%1$c    ret%1$c%1$c_main:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c    mov byte [iter], COUNT%1$c    cmp byte [iter], 0%1$c    jne create%1$c    jmp end%1$ccreate:%1$c    lea rdi, [fname]%1$c    lea rsi, [exname]%1$c    mov rax, 0%1$c    call _strcmp %1$c    cmp rax, -83%1$c    je first_time%1$c    dec byte [iter]%1$cfirst_time:%1$c    lea rdi, [file]%1$c    lea rsi, [fmt]%1$c    mov rdx, [iter]%1$c    mov rax, 0%1$c    call _sprintf%1$c    lea rdi, [file]%1$c    lea rsi, [mode]%1$c    mov rax, 0%1$c    call _fopen%1$c    mov [fd], rax%1$c    mov rdi, rax %1$c    lea rsi, [msg]%1$c    mov rdx, [nl]%1$c    mov rcx, [quote]%1$c    lea r8, [msg]%1$c    mov r9, [iter]%1$c    mov rax, 0%1$c    call _fprintf%1$c    mov rdi, [fd]%1$c    mov rax, 0%1$c    call _fclose%1$c    lea rdi, [comp]%1$c    lea rsi, [cmpfmt]%1$c    mov rdx, [iter]%1$c    mov rax, 0%1$c    call _sprintf%1$c    lea rdi, [comp]%1$c    mov rax, 0%1$c    call _system%1$cend:%1$c    leave%1$c    ret%1$c", 0
fmt:    db      "Sully_%d.s", 0
cmpfmt: db      "~/.brew/bin/nasm -f macho64 Sully_%1$d.s && gcc -Wall -Wextra -Werror Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0
mode:   db      "w+", 0
nl:     db      0x0a
quote:  db      0x22
exname: db      "Sully.s"
fname:  db      __FILE__

section .bss

file:   resb      16
iter:   resb      1
comp:   resb      32
fd:     resb      1

section .text
global start
global _main
extern _fprintf
extern _sprintf
extern _fclose
extern _fopen
extern _system
extern _strcmp

start:
    call _main
    ret

_main:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    mov byte [iter], COUNT
    cmp byte [iter], 0
    jne create
    jmp end
create:
    lea rdi, [fname]
    lea rsi, [exname]
    mov rax, 0
    call _strcmp 
    cmp rax, -83
    je first_time
    dec byte [iter]
first_time:
    lea rdi, [file]
    lea rsi, [fmt]
    mov rdx, [iter]
    mov rax, 0
    call _sprintf
    lea rdi, [file]
    lea rsi, [mode]
    mov rax, 0
    call _fopen
    mov [fd], rax
    mov rdi, rax 
    lea rsi, [msg]
    mov rdx, [nl]
    mov rcx, [quote]
    lea r8, [msg]
    mov r9, [iter]
    mov rax, 0
    call _fprintf
    mov rdi, [fd]
    mov rax, 0
    call _fclose
    lea rdi, [comp]
    lea rsi, [cmpfmt]
    mov rdx, [iter]
    mov rax, 0
    call _sprintf
    lea rdi, [comp]
    mov rax, 0
    call _system
end:
    leave
    ret
