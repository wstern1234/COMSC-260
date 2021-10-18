; XchgPushPop.asm - uses only PUSH and POP instructions to exchange the values in the EAX and EBX registers

INCLUDE Irvine32.inc


.code
main PROC

	mov eax, 3
	mov ebx, 4
	push eax
	push ebx
	pop eax
	pop ebx

INVOKE ExitProcess, 0
main ENDP
END main