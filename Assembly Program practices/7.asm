TITLE 'Debug program'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV AX, 4000H
ADD AX,AX
SUB AX, 0001H
NEG AX
INC AX
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN