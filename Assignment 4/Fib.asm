; Fib.asm - calculates the first seven values of the Fibonacci number sequence

INCLUDE Irvine32.inc


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD


.data
count DWORD 5
array DWORD 7 DUP (1, 1, ?, ?, ?, ?, ?)


.code
main PROC

mov ecx, count
mov ESI, OFFSET array
Add ESI, TYPE array
Add ESI, TYPE array

L1:
	MOV EAX, [ESI - 4]
	MOV EBX, [ESI - 8]
	ADD EAX, EBX
	MOV [ESI], EAX
	ADD ESI, TYPE array
Loop L1


INVOKE ExitProcess, 0
main ENDP
END main