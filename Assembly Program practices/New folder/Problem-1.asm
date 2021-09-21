
;Problem 1

;1. Write an assembly language program using loop to print following output:
;Sample Input/output:     

;Enter number: 5 
;*
;**
;***
;****
;*****  

;Enter number: 7
;*
;**
;***
;****
;*****
;******
;*******

    
include 'emu8086.inc'
.model small
.stack
.data     

.code 
main proc    
    print "enter number  " 
    MOV AH,1
    INT 21H
    mov bl,al
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cl,'0'
    
    while:
        cmp cl,bl
        je exit
        mov bh,cl
        
        innerloop:
        cmp bh,47
        je inner_out
        mov ah,2
        mov dl,'*'
        int 21h
        dec bh
        jmp innerloop
       inner_out:
       
       
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
      


