[org 0x7c00]

;mov dx, 0x1fb6
;call print_hex

mov bx, hello
call print

jmp $

hello:
    db 'helloooo', 0

%include "print.asm"

times 510-($-$$) db 0

dw 0xaa55
