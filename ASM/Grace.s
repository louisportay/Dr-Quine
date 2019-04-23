SECTION .data
; Oh my god that's some funky shit!
%define kiddie kiddie_s: db "Grace_kid.s"
%define prog prog_s: db ""

kiddie
prog

SECTION .text
	global _main
	extern _puts

%macro main 0
_main:
push rbx
lea rdi, [rel prog_s]
call _puts
pop rbx
ret
%endmacro

main
