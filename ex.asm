

global _start

section .text:

_start:
	mov eax, 0x4			; use the wirte syscall	
	mov ecx, 1			; use stdout
	mov ecx, message                ; use the message as buff
	mov edx, message_lenght   	; supply the lenth
	int 0x80
	
	; execute 
	mov eax, 0x1	
	mov ebx, 0
	int 0x80

section .data:
	message: db "Hello world!", 0XA
	message_lenght equ $-message 
