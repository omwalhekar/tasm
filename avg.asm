.model small
.data
 arr db 8,5,7,1,9,2,6,8,4,10
          avg db ?
          msg db "Average = $"      
.code
 	begin:
    mov ax,@data
    mov ds,ax

    lea si,arr
	lea dx,msg
    mov ah,9
	int 21h
 
    mov ax,00
	mov bl,10 		
    mov cl,10

 repeat:
 		add al,arr[si]
 		inc si
 		dec cl
 		jnz repeat
 		 div bl
 		add al,48
 		mov dl,al
 		mov ah,2h
 		int 21h
 
mov ah,4ch
 		int 21h
 
end begin 
