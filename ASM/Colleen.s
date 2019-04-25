SECTION .data
; 1st comment
prog: db	"SECTION .data%1$c; 1st comment%1$cprog: db	%2$c%3$s%2$c,0%1$c%1$cSECTION .text%1$c	extern _printf%1$c	global _main%1$c%1$cuseless:%1$c	ret%1$c%1$c_main:%1$c; 2nd comment%1$c	push rbx%1$c	call useless%1$c	lea rdi, [rel prog]%1$c	mov rsi, 10%1$c	mov rdx, 34%1$c	lea rcx, [rel prog]%1$c	call _printf%1$c	pop rbx%1$c	ret%1$c",0

SECTION .text
	extern _printf
	global _main

useless:
	ret

_main:
; 2nd comment
	push rbx
	call useless
	lea rdi, [rel prog]
	mov rsi, 10
	mov rdx, 34
	lea rcx, [rel prog]
	call _printf
	pop rbx
	ret
