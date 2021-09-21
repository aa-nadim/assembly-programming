

;Problem 2 

;Write an assembly language program to find the largest number from given any 3
;number.
;Sample Input
;Enter any three number: 3 9 5
;Output:
;Largest number: 9 
 
 
 
 include 'emu8086.inc' 
org 100h
.model small
.data
;A DB 3,9,5	
  arr db 5 dup(?)	
.code
main proc
    mov ax,@data
    mov ds,ax
    
    print "enter 3 numbers in array : "
    
    mov cx,5
    mov bx,offset arr     
    mov ah,1
    
    inputs:
    int 21h
    mov [bx],al  
    inc bx
    loop inputs  
    
    mov cx,5
    dec cx
    
    OuterLoop:
    mov bx,cx
    mov si,0  
    
    CompLoop:
    mov al,arr[si]
    mov dl,arr[si+1]
    cmp al,dl
    
    jnc noSwap
    
    mov arr[si],dl
    mov arr[si+1],al   
    
    noSwap:
    inc si
    dec bx
    jnz CompLoop
    
    loop OuterLoop     
    
    ;new line 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    print "Largest number :"
    
    mov cx,1
    mov bx,offset arr
    
    ;this loop to display elements on the screen   
    
    outputs: 
    
    mov dl,[bx]
    mov ah,2
    int 21h
    
    mov dl,32
    mov ah,2
    int 21h
    
    inc bx
    loop outputs
     


main endp

ret   


