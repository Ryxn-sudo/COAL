; --> HOME TASK 4

.386
.model flat,stdcall
.stack 4096

; --> (ignore it) ExitProcess proto,dwExitCode:dword

include Irvine32.inc  ; Include the Irvine32 library

;--> Variables Declaration starts here

.data
    message1 db "Result 1 is: ", 0
    message2 db "Result 2 is: ", 0
    message3 db "Result 3 is: ", 0
    message4 db "Result 4 is: ", 0
    message5 db "Result 5 is: ", 0
    message6 db "Result 6 is: ", 0
;-->Q1 Variables 
   x DWORD 25000
   y DWORD 15000
   result DWORD ?

;-->Q2 Variables 
   p WORD 100
   q DWORD 5000

;-->Q3 Variables 
    a WORD 500      
    b DWORD 10000    
    c2 DWORD 2500    

;-->Q4 Variables 
   a2 WORD 30000
   b2 DWORD 40000

;-->Q5 Variables 
   p2 WORD 12345
   q2 WORD 20000

;-->Q6 Variables 
   m WORD -32000
   n DWORD 100000

;--> Variables Declaration Ends here

.code
main proc

;--> Coding Starts here
    ;-->Q1 Code

    mov eax, x       
    add eax, y       
    mov result, eax
    mov edx, offset message1
    call WriteString
    call WriteDec 
    call Crlf

    ;-->Q2 Code

    movzx eax, p     
    add eax, q      
    mov result, eax 
    mov edx, offset message2
    call WriteString
    call WriteDec   
    call Crlf

    ;-->Q3 Code

    mov eax, b       
    movzx ebx, a      
    sub eax, ebx      

    sub eax, c2   

    mov result, eax 
    mov edx, offset message3
    call WriteString
    call WriteDec
    call Crlf
 
    
    ;-->Q4 Code

    mov ax, a2
    movzx eax, ax 
    add eax, b2
    mov result, eax

    mov edx, offset message4
    call WriteString
    call WriteDec
    call Crlf


    ;-->Q5 Code

    movzx eax, p2     
    movzx ebx, q2     
    add eax, ebx     
    mov result, eax

    mov edx, offset message5
    call WriteString
    call WriteDec    
    call Crlf
    
    ;-->Q6 Code
    movsx eax, m  
    add eax, n     
    mov ebx, 0     
    sub ebx, eax 
    mov edx, offset message6
    call WriteString
    call WriteDec
    call Crlf




;--> Coding Ends here

    invoke ExitProcess,0
main endp
end main
