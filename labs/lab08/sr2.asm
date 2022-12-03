%include 'in_out.asm'

SECTION .data

x1: DB 'Введите значение x: ',0
a1: DB 'Введите значение a: ',0
otv1: DB 'Ответ при x, a:',0

SECTION .bss
x:  RESB 10
a:  RESB 10
rez:RESB 10

SECTION .text
Global _start

_start:

    mov eax, x1
    call sprintLF

    mov ecx,x
    mov edx,80
    call sread

    mov eax, x
    call atoi
    mov [x], eax

    mov eax,a1
    call sprintLF

    mov ecx,a
    mov edx,80
    call sread

    mov eax, a
    call atoi
    mov [a], eax


    mov ebx, [x]
    cmp ebx, [a] ; compare
    jg konets

    mov eax, [x]
    add eax, [a]

    jmp end

konets:
    mov eax, [x]
    mov ebx, 5
    mul ebx

end:
    call iprintLF
    call quit
