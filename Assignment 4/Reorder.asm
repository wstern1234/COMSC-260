; Reorder.asm - reorders the values in four 8-bit registers from the order A,B,C,D to B,C,D,A

INCLUDE Irvine32.inc


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD




.data
val1 BYTE 1
val2 BYTE 2
val3 BYTE 3
val4 BYTE 4




.code
main PROC


mov al, val1
xchg al, val2
mov val1, al
mov al, 0

mov al, val1
xchg al, val3
mov val1, al
mov al, 0

mov al, val1
xchg al, val4
mov val1, al
mov al, 0


INVOKE ExitProcess, 0
main ENDP
END main