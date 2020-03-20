.model small
.data                                               ;data segment
    msg db "Hello World!!!$"
    msg1 db 10,13, "We are in PIL lab$"
    msg2 db 10,13, "We are performing practical 2$"

.code 
    begin:
        mov ax, @data
        mov ds, ax

    lea dx, msg1                                     ;load effective address
    mov ah, 9h
    int 21h

    ;lea dx, msg1
    mov ah, 9h
    int 21h

    ;lea dx, msg2
    mov ah, 9h
    int 21h

    mov ah, 4ch
    int 21h

    end begin