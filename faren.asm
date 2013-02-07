;Program   :  This is a simple program that performs conversion between Celsius scale and
;             Fahrenheit scale. User should input the desired conversion.                 


section .data

	 msg1: db "Enter the choice",10,0
	 msg2: db "1 celsius to fahrenhiet",10,0
	 msg3: db "2 fahernhiet to celsius",10,0
	 msg6: db "Enter the celsius",10,0
	 msg5: db "Enter the fahrenhiet",10,0
	 msg7: db "The result =%d",10,0
	 msg4: db "%d",10,0
	 fahren: dd 0
	 celsius:dd 0
	 choice: dd 0
         formatin: db "%d" ,0
	 con1:dd 5
         con2:dd 9
	

section .text

	extern printf
	extern scanf
	global main
	main:
		push ebp
		mov ebp,esp
		
		push msg1
		call printf

                add esp,4

		push msg2
                call printf

                add esp,4
		
		push msg3
                call printf

                add esp,4

		push choice
                push formatin
		call scanf

		mov eax,[choice]
		cmp eax,2   ;check if choice 1
		
                je .choice2



		push msg6  ;enter celcius
		call printf

                add esp,4
		
		push celsius 
		push formatin
		call scanf
                add esp,4

		mov eax,[celsius] ;                                          
                mov ebx,[con2]
                imul ebx 
                mov ebx,[con1]  
                idiv ebx  
                add eax,32                                                   
		push eax              
		push msg7
		call printf            
		jmp .done


        

                .choice2:
		
		     push msg5  
		     call printf
                     add esp,4
		
		     push  fahren
		     push formatin
		     call scanf
		     mov eax,[fahren] ;fahernhiet cal
		     sub eax,32                                            
		     mov edx,5
                     mov ebx,9
                     imul edx  
                     idiv ebx                                                      
		     push eax              
		     push msg7
		     call printf  
                     jmp .done         


	        .choice1:
		     jmp .done

		
	        .done:	
		    mov esp,ebp
		    pop ebp
		    ret	

