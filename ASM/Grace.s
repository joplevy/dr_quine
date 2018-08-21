;outside comment
DEFAULT REL
section .data

msg:    db      ";outside comment%1$cDEFAULT REL%1$csection .data%1$c%1$cmsg:    db      %2$c%3$s%2$c, 0%1$cfile:    db      %2$cGrace_kid.s%2$c, 0%1$cmode:    db      %2$cw%2$c, 0%1$cnl:     db      0x0a%1$cquote:  db      0x22%1$c%1$csection .text%1$cglobal start%1$cglobal _main%1$cextern _fprintf%1$cextern _fopen%1$c%1$cstart:%1$c    call _main%1$c    ret%1$c%1$c_main:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c    lea rdi, [file]%1$c    lea rsi, [mode]%1$c    mov rax, 0%1$c    call _fopen%1$c    mov rdi, rax %1$c    lea rsi, [msg]%1$c    mov rdx, [nl]%1$c    mov rcx, [quote]%1$c    lea r8, [msg]%1$c    mov rax, 0%1$c    call _fprintf%1$c    leave%1$c    ret%1$c", 0
file:    db      "Grace_kid.s", 0
mode:    db      "w", 0
nl:     db      0x0a
quote:  db      0x22

section .text
global start
global _main
extern _fprintf
extern _fopen

start:
    call _main
    ret

_main:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    lea rdi, [file]
    lea rsi, [mode]
    mov rax, 0
    call _fopen
    mov rdi, rax 
    lea rsi, [msg]
    mov rdx, [nl]
    mov rcx, [quote]
    lea r8, [msg]
    mov rax, 0
    call _fprintf
    leave
    ret
