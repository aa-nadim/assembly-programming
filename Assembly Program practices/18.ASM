TITLE 'sum of array'
.MODEL SMALL
.STACK 100H
.DATA
W DB 10,20,30,40,50  			;must use DB
.CODE
MAIN PROC			
	MOV AX, @DATA
	MOV DS,AX
	XOR SI,SI
	LEA SI,W
	MOV CX,5
	ADDNUM_:
	ADD AX,[SI]	;AX=AX+[SI]
	ADD SI,2
	LOOP ADDNUM_		; where is tha code to diaplay sum?
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