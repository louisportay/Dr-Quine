SECTION .bss
f: resb 64
o: resb 64
cmd_buf: resb 64

SECTION .data
filename: db "Sully_%d.s",0
prog: db "SECTION .bss%1$cf: resb 64%1$co: resb 64%1$ccmd_buf: resb 64%1$c%1$cSECTION .data%1$cfilename: db %2$cSully_%%d.s%2$c,0%1$cprog: db %2$c%4$s%2$c,0%1$cout: db %2$cSully_%%d%2$c,0%1$ccmd_s: db %2$cnasm -fmacho64 %%1$s && ld -macosx_version_min 10.12 -lc %%2$s.o -o %%2$s && ./%%2$s%2$c,0%1$cmode: db %2$cw%2$c,0%1$c%1$cSECTION .text%1$c	global _main%1$c	extern _sprintf%1$c	extern _fopen%1$c	extern _fprintf%1$c	extern _fclose%1$c	extern _system%1$c%1$c_main:%1$cpush rbp%1$csub rsp, 16%1$cmov rdi, f%1$cmov rsi, filename%1$cmov rdx, %3$d%1$c%%ifndef REPLICATE%1$cdec rdx%1$c%%endif%1$cmov r12, rdx%1$cmov r13, rdi%1$ccall _sprintf%1$cmov rdi, r13%1$cmov rsi, mode%1$ccall _fopen%1$ccmp rax, 0%1$cje end%1$cmov r14, rax%1$cmov rdi, rax%1$cmov rsi, prog%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, r12%1$cmov r9, prog%1$ccall _fprintf%1$cmov rdi, r14%1$ccall _fclose%1$ccmp r12, 0%1$cjle end%1$cmov rdi, o%1$cmov r14, o%1$cmov rsi, out%1$cmov rdx, r12%1$ccall _sprintf%1$cmov rdi, cmd_buf%1$cmov r15, rdi%1$cmov rsi, cmd_s%1$cmov rdx, r13%1$cmov rcx, r14%1$ccall _sprintf%1$cmov rdi, r15%1$ccall _system%1$cend:%1$cadd rsp, 16%1$cpop rbp%1$cret%1$c",0
out: db "Sully_%d",0
cmd_s: db "nasm -fmacho64 %1$s && ld -macosx_version_min 10.12 -lc %2$s.o -o %2$s && ./%2$s",0
mode: db "w",0

SECTION .text
	global _main
	extern _sprintf
	extern _fopen
	extern _fprintf
	extern _fclose
	extern _system

_main:
push rbp
sub rsp, 16
mov rdi, f
mov rsi, filename
mov rdx, 5
%ifndef REPLICATE
dec rdx
%endif
mov r12, rdx
mov r13, rdi
call _sprintf
mov rdi, r13
mov rsi, mode
call _fopen
cmp rax, 0
je end
mov r14, rax
mov rdi, rax
mov rsi, prog
mov rdx, 10
mov rcx, 34
mov r8, r12
mov r9, prog
call _fprintf
mov rdi, r14
call _fclose
cmp r12, 0
jle end
mov rdi, o
mov r14, o
mov rsi, out
mov rdx, r12
call _sprintf
mov rdi, cmd_buf
mov r15, rdi
mov rsi, cmd_s
mov rdx, r13
mov rcx, r14
call _sprintf
mov rdi, r15
call _system
end:
add rsp, 16
pop rbp
ret
