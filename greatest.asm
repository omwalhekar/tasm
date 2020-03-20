.model small
.data
         d1 db 06h
         d2 db 04h
         d3 db 09h
         largest db ?
         msg db " the largest out of three is :$"
.code
start:
mov ax,@data
mov ds,ax

        		mov al,d1
        		mov largest,al

                cmp al,d2
        		jge skip1

                mov al,d2
        		mov largest,al
        
	            skip1:
                	mov al,largest
                    cmp al,d3
        		    jge skip2  ;jump if greater than or equal, i.e jump if al is greater
                    mov al,d3
       		        mov largest,al
                
                skip2:
                    lea dx,msg
                    mov ah,09h
        		    int 21h
                	add al,48
                	mov dl,al
                	mov ah,2h
                	int 21h

                    mov ah,4ch
                    int 21h
                    end start
