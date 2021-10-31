; Wkst9_1.asm - Given two bit-mapped sets named SetX and SetY, write a sequence of instructions that generate a bit string in EAX that represents members in SetX that are not members of SetY.

INCLUDE Irvine32.inc


.data
SetX DWORD 10000111
SetY DWORD 10000101





.code
main PROC

mov eax, SetX
OR eax, SetY
sub eax, SetY

INVOKE ExitProcess, 0
main ENDP
END main