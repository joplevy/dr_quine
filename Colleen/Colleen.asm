DEFAULT REL
section .data

msg:    db      "DEFAULT REL%1$csection .data%1$c%1$cmsg:    db      %2$c%s%2$c, 10, 0%1$cnl:     db      0x0a%1$cquote:  db      0x22%1$c%1$csection .text%1$cglobal _main%1$cextern _printf%1$c%1$c_main:%1$c    push rbp%1$c    mov rdi, msg%1$c    mov rsi, [nl]%1$c    mov rax, 0%1$c    call _printf%1$c%1$c    mov     rax, 0x2000001 ; exit%1$c    mov     rdi, 0%1$c    syscall", 10, 0
nl:     db      0x0a
quote:  db      0x22

section .text
global _main
extern _printf

_main:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    
    lea rdi, [msg]
    mov ebx, 1
    mov rsi, [nl]
    mov rdx, [quote]
    lea rcx, [msg]
    mov rax, 0
    call _printf
; pop rbp
leave
ret
    ; mov     rax, 0x2000001 ; exit
    ; mov     rdi, 0
    ; syscall