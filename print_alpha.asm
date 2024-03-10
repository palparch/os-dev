mov ah, 0x0e

mov al, 0x41
int 0x10

print_alpha:
    inc ax
    int 0x10
    cmp al, 0x5A
    jl print_alpha
