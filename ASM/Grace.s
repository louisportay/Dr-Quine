SECTION .data

; Oh my god that's some funky shit!

%define kiddie kiddie_s: db "Grace_kid.s",0
%define prog prog_s: db "SECTION .data%1$c%1$c; Oh my god that's some funky shit!%1$c%1$c%%define kiddie kiddie_s: db %2$cGrace_kid.s%2$c,0%1$c%%define prog prog_s: db %2$c%3$s%2$c,0%1$c%1$ckiddie%1$cprog%1$c%1$cSECTION .text%1$c	global _main%1$c	extern _fprintf%1$c	extern _fopen%1$c	extern _fclose%1$c%1$c%%macro main 0%1$cmode:%1$c	db %2$cw%2$c,0%1$c_main:%1$cpush rbx%1$clea rdi, [rel kiddie_s]%1$clea rsi, [rel mode]%1$ccall _fopen%1$ccmp rax, 0%1$cje end%1$cmov rdi, rax%1$cpush rax%1$clea rsi, [rel prog_s]%1$cmov rdx, 10%1$cmov rcx, 34%1$clea r8, [rel prog_s]%1$csub rsp, 8%1$ccall _fprintf%1$cadd rsp, 8%1$cpop rdi%1$ccall _fclose%1$cend:%1$cpop rbx%1$cret%1$c%%endmacro%1$c%1$cmain%1$c",0

kiddie
prog

SECTION .text
	global _main
	extern _fprintf
	extern _fopen
	extern _fclose

%macro main 0
mode:
	db "w",0
_main:
push rbx
lea rdi, [rel kiddie_s]
lea rsi, [rel mode]
call _fopen
cmp rax, 0
je end
mov rdi, rax
push rax
lea rsi, [rel prog_s]
mov rdx, 10
mov rcx, 34
lea r8, [rel prog_s]
sub rsp, 8
call _fprintf
add rsp, 8
pop rdi
call _fclose
end:
pop rbx
ret
%endmacro

main
