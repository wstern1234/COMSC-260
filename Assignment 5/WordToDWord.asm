; WordToDWord.asm -  copies all the elements from an unsigned word (16-bit) array into an unsigned doubleword (32-bit) array

INCLUDE Irvine32.inc


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
array WORD 1, 2, 3, 4
newArray DWORD LENGTHOF array DUP(?)




.code
main PROC

	mov ecx, LENGTHOF array
	mov esi, OFFSET array
	mov edi, OFFSET newArray


	L1:
		mov eax, 0
		mov ax, [esi]
		mov [edi], eax
		add esi, TYPE array
		add edi, TYPE newArray
	loop L1

INVOKE ExitProcess, 0
main ENDP
END main