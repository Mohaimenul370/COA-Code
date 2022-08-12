.MODEL SMALL 
.STACK 100H 
.DATA 
                                          
n_line DB 0AH,0DH,"$"                                                                                      
;The string to be printed 
STRING DB 'MAHDI MD MOHAIMENUL ISLAM', '$' 
MSG DB 'AGE 24','$' 
MSG1 DB 'BANGLADESHI','$'  
MSG2 DB 'MALE','$'
  
.CODE 
MAIN PROC  
 MOV AX,@DATA 
 MOV DS,AX 
  
 ; load address of the string 
 LEA DX,STRING 
  
 ;output the string
 ;loaded in dx 
 MOV AH,09H
 INT 21H  
 
 
 
 LEA DX,n_line ;lea means least effective address

        MOV AH,9

        INT 21H       ;print new line  
 
 
 LEA DX,MSG 
  
 ;output the string
 ;loaded in dx 
 MOV AH,09H
 INT 21H
                 
                 
   LEA DX,n_line ;lea means least effective address

        MOV AH,9

        INT 21H       ;print new line  
 
 
 LEA DX,MSG1 
  
 ;output the string
 ;loaded in dx 
 MOV AH,09H
 INT 21H
 
 
  LEA DX,n_line ;lea means least effective address

        MOV AH,9

        INT 21H       ;print new line  
 
 
 LEA DX,MSG2 
  
 ;output the string
 ;loaded in dx 
 MOV AH,09H
 INT 21H
 
 
                
 ;interrupt to exit
 MOV AH,4CH
 INT 21H 
  
MAIN ENDP 
END MAIN 

