; Asmt5.asm - Create a procedure that fills an array of doublewords with N random integers, making sure the values fall within the range j...k, inclusive.

INCLUDE Irvine32.inc


.data
array DWORD 10,20,30,40
arrayType DWORD TYPE array
newArray DWORD LENGTHOF array DUP(?)
lastElement DWORD ?

.code
main PROC
  
	mov esi, OFFSET array


	mov edi, OFFSET newArray
	add edi, TYPE newArray


	mov ecx, LENGTHOF array

	L1:
		mov eax, [esi]
		mov [edi], eax

		add esi, TYPE array
		add edi, TYPE array
	loop L1


	mov edi, OFFSET newArray
	mov eax, [esi]
	mov [edi], eax

INVOKE ExitProcess,0
main ENDP
END main