%include 'in_out.asm'

SECTION .data
rem: DB 'ВЫчислить значение выражения x^3/2+1',0
msg: DB 'Введите x:  ',0
div: DB 'Результат:  ',0

SECTION .bss
x:	RESB 80
rez:	RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, rem
call sprintLF

mov eax, msg
Call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax, x
call atoi

mov ecx, eax
mul ecx
mul ecx
mov ebx,2
div ebx
add eax,1

mov [rez], eax

mov eax,div
call sprintLF
mov eax, [rez]
call iprintLF

call quit

