.model small
.stack 100h
.data 
    msg3 db 10,13, "Result is:$"

.code
start:
    mov ax, @data
    mov ds, ax

    mov al, 9
    add al, 0
    add al, 48

    lea dx, msg3
    mov ah, 9h
    int 21h

    mov dl, al  ;whatever ASCII value is in al, dl will send character of that ascii value to output
    mov ah, 2h 
    int 21h 

    mov ah, 4ch 
    int 21h 

end start