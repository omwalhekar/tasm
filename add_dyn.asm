;addition of two 8 bit numbers dynamically

.model small
.stack 100h

.data
d1 db ?
d2 db ?

msg1 db 10,13, "Enter Number 1:$"
msg2 db 10,13, "Enter Number 2:$"
msg3 db 10,13, "Result is: $"
result db 00h

.code 
start:
        mov ax, @data
        mov ds, ax

        lea dx, msg1
        mov ah, 9h
        int 21h

        mov ah, 01h
        int 21h
        mov d1, al

        lea dx, msg2
        mov ah, 9h
        int 21h

        mov ah, 01
        int 21h
        mov d2, al

        mov al, d1
        add al, d2
        sub al, 48

        lea dx, msg3
        mov ah, 9h
        int 21h

        mov dl, al
        mov ah, 2h 
        int 21h

        mov ah, 4ch
        int 21h

end start

;i have  made a change in this file
;lets see where this gets commited
