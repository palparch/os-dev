[org 0x7c00]

mov bx, hello
call print

mov bx, bye
call print 

%include "print_string.asm"

hello:
    db 'Hello, World', 0

bye:
    db 'Goodbye', 0

jmp $

times 510-($-$$) db 0

dw 0xaa55
