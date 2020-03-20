.model small
.stack 100h
.data
.code
    start:
                mov al,5            ;take 1st number
        		mov bl,5			;take 2nd number
        		mul bl	        	;multiplication
        		aam

        		mov ch,ah
        		mov cl,al
 
       		    mov dl,ch
        		add dl,48

        		mov ah,02h		    ;print MSB
        		int 21h

        		mov dl,cl
        		add dl,48

        		mov ah,02h		    ;print LSB
        		int 21h

                mov ah,4ch    	    ;terminate
        		int 21h
    end start
