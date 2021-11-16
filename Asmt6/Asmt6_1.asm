; Asmt6_1.asm - Write a sequence of instructions that shift three memory bytes to the right by 1 bit position.

INCLUDE Irvine32.inc


.data
byteArray BYTE 81h,20h,33h




.code

main PROC
shr [byteArray + 2], 1
rcr [byteArray + 1], 1
rcr [byteArray], 1


INVOKE ExitProcess, 0
main ENDP
END main