print:
    pusha
    mov si, bx
    mov ah, 0x0e

    call run
    popa

run:
    inc bx
    mov bl, al 
    cmp al, 0
    je done
    int 0x10
    jmp run

done:
    ret
