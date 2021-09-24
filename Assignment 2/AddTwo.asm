; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
sum DWORD 0

.code
main proc
	mov	eax, 01011010b
	add	eax, 00010111b
	mov sum, eax

	invoke ExitProcess, 0
main endp
end main
