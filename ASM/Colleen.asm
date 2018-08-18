;outside comment
DEFAULT REL
section .data

msg:    db      ";outside comment%1$cDEFAULT REL%1$csection .data%1$c%1$cmsg:    db      %2$c%s%2$c, 0%1$cnl:     db      0x0a%1$cquote:  db      0x22%1$c%1$csection .text%1$cglobal start%1$cglobal _main%1$cextern _printf%1$c%1$cstart:%1$c    call _main%1$c    ret%1$c%1$c_main:%1$c    ;inside comment%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c%1$c    lea rdi, [msg]%1$c    mov rsi, [nl]%1$c    mov rdx, [quote]%1$c    lea rcx, [msg]%1$c    mov rax, 0%1$c    call _printf%1$c    leave%1$c    ret%1$c", 0
nl:     db      0x0a
quote:  db      0x22

section .text
global start
global _main
extern _printf

start:
    call _main
    ret

_main:
    ;inside comment
    push rbp
    mov rbp, rsp
    sub rsp, 16

    lea rdi, [msg]
    mov rsi, [nl]
    mov rdx, [quote]
    lea rcx, [msg]
    mov rax, 0
    call _printf
    leave
    ret
