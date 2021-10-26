; SubReturnAddr.asm - displays return address of WriteHex

INCLUDE Irvine32.inc


.data




.code
main PROC
mov eax, [esp]
call WriteHex


INVOKE ExitProcess, 0
main ENDP
END main
