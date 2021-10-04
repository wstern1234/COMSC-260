; ReverseArr.asm - reverses the elements of an integer numArr in place

INCLUDE Irvine32.inc


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD


.data
numArr DWORD 1, 5, 6, 8, 0Ah, 1Bh, 1Eh, 22h, 2Ah, 32h
count BYTE LENGTHOF numArr -1


.code
main PROC

MOV ESI, OFFSET numArr
MOV EDI, OFFSET numArr
ADD EDI, SIZEOF numArr
SUB EDI, TYPE numArr 

mov ecx, LENGTHOF numArr

L1:

	mov eax, [esi]
	mov ebx, [edi]
	XCHG eax, ebx
	mov [esi], eax
	mov [edi], ebx

	add esi, TYPE numArr
	sub edi, TYPE numArr
	dec ecx

loop L1


mov eax, 0
mov ecx, LENGTHOF numArr
mov esi, OFFSET numArr


L2:

    add eax, [esi]
	add esi, 4h

    call writeDec
    call crlf

	mov eax, 0

loop L2


INVOKE ExitProcess, 0
main ENDP
END main