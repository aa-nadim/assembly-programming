
;Problem 3

;Write an assembly language program to convert lowercase from uppercase letter.
;Sample Input:
;Enter any uppercase letter: M
;Output:
;Lower case letter: m

    
.MODEL SMALL
.STACK 100H
.DATA
A DB 'Enter any upper case letter: $'
B DB 0DH,0AH,'Lower case letter :'
CHAR DB ?,'$'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
LEA DX,A
MOV AH,9
INT 21H
MOV AH,1
INT 21H
add AL,20H 
MOV CHAR,AL
LEA DX,B
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
       
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h  
      inc cl
     jmp while
      
          
          
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
      


