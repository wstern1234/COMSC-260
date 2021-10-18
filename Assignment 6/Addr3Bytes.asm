; Addr3Bytes.asm - returns an address that was 3 bytes higher in memory than the return address currently on the stack

INCLUDE Irvine32.inc


.code
main PROC

mov eax, 4
call AddrUp3


invoke ExitProcess, 0
main ENDP


AddrUp3 PROC

pop eax
add eax, 0Ch
push eax
ret

AddrUp3 endp

END main