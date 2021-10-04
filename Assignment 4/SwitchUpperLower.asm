; SwitchUpperLower.asm - exchanges the upper and lower words in a doubleword variable named three

INCLUDE Irvine32.inc


.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD




.data
three DWORD "w x",0




.code
main PROC

mov ecx, three


mov ax, WORD PTR three
mov bx, WORD PTR three + 2
mov WORD PTR three, bx
mov WORD PTR three + 2, ax

mov eax, three ; eax and ecx are flipped, so it worked


INVOKE ExitProcess, 0
main ENDP
END main