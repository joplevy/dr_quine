section	.text
    global _start

nl_print:
	mov	ecx, tild ;letter to write
    int 0x80
	mov	ecx, bslash ;letter to write
    int 0x80
	mov	ecx, nline ;letter to write
    jmp end_loop

normal_print:
	mov ecx, esi ;letter to write
    jmp end_loop

my_loop:
	mov	eax, 4	;system call number (sys_write)
	mov	ebx, 1	;file descriptor (stdout)
	mov	edx, 1	;message length
    cmp esi, tild; <== comparaison ici
    je nl_print
    jmp normal_print
end_loop:
	int	0x80
    inc word [ptr]
    inc esi
    cmp word [ptr], len
    jle my_loop
    jmp _end

_start:
    mov [ptr], word 0
    mov esi, msg
    jmp my_loop

_end:
	mov	eax, 1
	int	0x80

 

section	.data

msg     db  'text de tst~\
toto'

nline   db  10
att     db  64
bslash  db  92
tild    db  126
quote   db  34

len     equ $ - msg

section .bss

ptr: resw 1
