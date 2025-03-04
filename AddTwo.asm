; --> LAB 3

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
    message7 db "Result 7 is: ", 0
    message8 db "Result 8 is: ", 0
    message9 db "Result 9 is: ", 0
    message10 db "Result 10 is: ", 0

;--> Variables Declaration Ends here

.code
main proc

;--> Coding Starts here
    
    call DumpRegs

    ; 1. (10 + 20) - (5 + 3)
    mov eax, 10
    add eax, 20
    mov ebx, 5
    add ebx, 3
    sub eax, ebx
    mov edx, offset message1
    call WriteString
    call DumpRegs
    

    ; 2. (15 + 25) + (30 - 10)
    mov eax, 15
    add eax, 25
    mov ebx, 30
    sub ebx, 10
    add eax, ebx
    mov edx, offset message2
    call WriteString
    call DumpRegs
    

    ; 3. (50 + 20) - (15 + 5)
    mov eax, 50
    add eax, 20
    mov ebx, 15
    add ebx, 5
    sub eax, ebx
    mov edx, offset message3
    call WriteString
    call DumpRegs
    

    ; 4. (100 - 30) + (25 + 5)
    mov eax, 100
    sub eax, 30
    mov ebx, 25
    add ebx, 5
    add eax, ebx
    mov edx, offset message4
    call WriteString
    call DumpRegs
    

    ; 5. (40 + 60) - (20 + 15)
    mov eax, 40
    add eax, 60
    mov ebx, 20
    add ebx, 15
    sub eax, ebx
    mov edx, offset message5
    call WriteString
    call DumpRegs
    

    ; 6. (25 + 35) - (10 + 5)
    mov eax, 25
    add eax, 35
    mov ebx, 10
    add ebx, 5
    sub eax, ebx
    mov edx, offset message6
    call WriteString
    call DumpRegs
    

    ; 7. (60 - 20) + (30 + 10)
    mov eax, 60
    sub eax, 20
    mov ebx, 30
    add ebx, 10
    add eax, ebx
    mov edx, offset message7
    call WriteString
    call DumpRegs
    

    ; 8. (30 + 50) - (20 + 10)
    mov eax, 30
    add eax, 50
    mov ebx, 20
    add ebx, 10
    sub eax, ebx
    mov edx, offset message8
    call WriteString
    call DumpRegs
    

    ; 9. (80 - 40) + (25 + 15)
    mov eax, 80
    sub eax, 40
    mov ebx, 25
    add ebx, 15
    add eax, ebx
    mov edx, offset message9
    call WriteString
    call DumpRegs
    

    ; 10. (90 + 10) - (30 + 20)
    mov eax, 90
    add eax, 10
    mov ebx, 30
    add ebx, 20
    sub eax, ebx
    mov edx, offset message10
    call WriteString
    call DumpRegs
    

;--> Coding Ends here

    invoke ExitProcess,0
main endp
end main
