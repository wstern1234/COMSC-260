; PreviousPos.asm - uses indexed addressing that copies an element in a doubleword array, which is pointed to by esi, to the previous position in the same array

INCLUDE Irvine32.inc


.data
arr DWORD 1, 2, 3, 4




.code
main PROC

mov edi, esi
dec edi
mov edx, arr[esi * 4]
mov arr[edi * 4], edx

INVOKE ExitProcess, 0
main ENDP
END main