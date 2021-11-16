; Asmt6_2.asm - Write a sequence of instructions that shift three memory words to the left by 1 bit position.

INCLUDE Irvine32.inc


.data
wordArray WORD 810Dh, 0C064h,93ABh




.code
main PROC
shr [wordArray + 2], 1
rcr [wordArray + 1], 1
rcr [wordArray], 1


INVOKE ExitProcess, 0
main ENDP
END main