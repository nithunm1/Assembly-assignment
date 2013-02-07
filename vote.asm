;Program   -  ALP to receive the age of a person as input and outputs whether the person is
;             eligible for voting or not and minimum voting age 18. 
;


extern printf
extern scanf
section .data
    message1: db "Enter your age" ,10,0
    scan: db "%d",0
    age: dd 0
    message2: db "Eligible for voting" ,10,0 
    message3: db "Not eligible for voting" ,10,0
    age1: dd 18

section .text
    global main
main:
    push ebp
    mov ebp,esp
    push message1
    call printf
    add esp,4
    push age
    push scan
    call scanf
    mov eax,[age]
    cmp eax,[age1]
    jge loop
    push message3
    call printf
    jmp done

    loop:
        push message2
        call printf
        jmp done
    
    done:
        
    mov esp,ebp
    pop ebp
    ret





