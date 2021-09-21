TITLE 'count the number of charectersin a line'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV BL,0			
	MOV AH,1
	INT 21H
	
	LOOP:                     
	    CMP AL,09H
	    JE END
	    INC BL
	    INT 21H
	    JMP LOOP
	END:
	;NEWLINE
	 MOV AH,2
	 MOV DL,10
	 INT 21H
	 MOV DL,13
	 INT 21H
	 
	 ;PRINT
	 MOV AH,2
	 ADD BL,48
	 MOV DL,BL
	 INT 21H
	
	  
		
		
EXIT:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN