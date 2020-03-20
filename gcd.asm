.model small
.data
d1 dw 1Eh
d2 dw 0Fh
gcd dw ?

.code
start:

        mov ax,@data            ;initialize data segment
        mov ds,ax

        mov ax,d1               ;get the first number
        mov bx,d2               ;get the second number

        again:
        cmp ax,bx       ;check if number are equal
    	je endd        	;if equal save the gcd
        jb exchg        ;if not equal move  larger                                                            number to ax


l2:     
        mov dx,0
        div bx          ;check if ax is divisible by bx
        cmp dx,0
        je endd
        mov ax,dx       ;move the remainder
       	jmp again
exchg: 
        xchg ax,bx
        jmp l2

endd:   
        mov gcd,bx
        mov ch,04h
       	mov  cl,04h
l12:   
        rol bx,cl
        mov dl,bl
        and dl,0Fh
        cmp dl,09
        jbe l4
        add dl,07
l4:     
        add dl,30h
        mov ah,02h
        int 21h
        dec ch
		jnz l12

        mov ah,4ch
        int 21h
        end start

