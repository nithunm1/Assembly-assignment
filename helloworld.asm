extern printf                           ; declare printf as extern

section .data
    msg:    db "Hello World", 10, 0     ; message to print
    
    len:    equ $-msg                   ; length of message

section .text
    
    global main                         ; entry point for gcc

    main:
        
        push ebp                        ; saving old base pointer
        
        mov ebp, esp                    ; setting up current base pointer

        push dword msg                  ; push msg
         
        call printf

        add esp, 4                      ; pop message off stack
        
        pop ebp                         ; restore ebp
        
        mov eax, 0                      ; exit code
        
        ret 
