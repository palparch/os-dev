get_last_bit:
    pusha
    mov bx, dx
    and bx, 0x00f
    add bx, 0x30 ; convert into ASCII
    cmp bl, 0x39
    jle



print_hex:
    pusha
    mov ah, 0x0e
    mov al, [dx]
    int 0x10
    inc dx


print:
    pusha
    call run_print

run_print:
    mov al, [bx]
    cmp al, 0
    je done
    
    mov ah, 0x0e
    int 0x10
    inc bx
    
    jmp run

done:
    popa
    ret
