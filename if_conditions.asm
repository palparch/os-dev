mov bx, 45

cmp bx, 4
jle if_a

cmp bx, 40
jl if_b
jg if_c

if_a:
    mov al, 'A'
    jmp print

if_b:
    mov al, 'B'
    jmp print

if_c:
    mov al, 'C'
    jmp print

print:
    mov ah, 0x0e
    int 0x10
