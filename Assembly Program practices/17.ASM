TITLE 'Factorial'
.MODEL SMALL
.STACK 100H
.DATA
.CODE

REC PROC
MOV AX,1	;AX holds products
TOP: 
MUL CX		;AX=AX*CX=1*5=5
LOOP TOP
RET
REC ENDP

MAIN PROC			
	MOV CX,9
	CALL REC
	call print
	MOV AH,4CH
	INT 21H
MAIN ENDP


PRINT PROC		
	;initialize count
	mov cx,0
	mov dx,0
	label1:
		cmp ax,0
		je print1	
		
		mov bx,10	
		
		div bx				
		
		push dx			
		
		inc cx			
		
		xor dx,dx
		jmp label1
	print1:
		cmp cx,0
		je exit
		
		pop dx
		
		add dx,48
		
		mov ah,02h
		int 21h  
		
		dec cx
		jmp print1
exit:
ret
print ENDP


END MAIN
