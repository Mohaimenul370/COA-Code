.model small
.stack 100h
.data
msg db 0ah,0dh,'negative$'
msg1 db 0ah,0dh,'positive$'

.code
main proc
mov ax,@data
mov ds,ax



mov ah,1
int 21h
mov bl,al



mov cl,30h




cmp bl,cl
jl negative

jg positive




negative:
lea dx,msg
mov ah,9
int 21h
jmp END





positive:
lea dx,msg1
mov ah,9
int 21h




END:
mov ah,4ch
int 21h
main endp
end main



