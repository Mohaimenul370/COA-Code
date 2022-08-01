 .model small
 .stack 100h
 .data
 msg db "hello world $" 
 .code
 main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg
    mov ah,09
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
 end main
  




