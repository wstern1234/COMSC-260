; GapSum.asm - calculates the sum of all the gaps between successive array elements

INCLUDE Irvine32.inc


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
array DWORD 0, 2, 5, 9, 10
result DWORD 0




.code
main PROC

	mov ecx, LENGTHOF array
	mov esi, OFFSET array


	L1:
		mov eax, [esi]
		mov ebx, [esi + 4]
		sub ebx, eax
		add result, ebx
		add esi, TYPE array
	Loop L1

INVOKE ExitProcess, 0
main ENDP
END main
