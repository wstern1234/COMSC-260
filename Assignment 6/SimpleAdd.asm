; SimpleAdd.asm - clears the screen, locates the cursor near the middle of the screen, prompts the user for two integers, adds the integers, and displays their sum

INCLUDE Irvine32.inc


.data
intMsg BYTE "Enter a 32-bit signed integer: ", 0
resultStr BYTE "Sum of 2 integers is: ", 0
num1 DWORD ?
num2 DWORD ?
sum DWORD ?




.code
main PROC

	call ClrScr
	
	call Gotoxy

	mov edx, OFFSET intMsg
	call WriteString
	call ReadInt
	mov num1, eax

	call WriteString
	call ReadInt
	mov num2, eax

	mov eax, num1
	add eax, num2
	mov sum, eax

	mov edx, OFFSET resultStr
	call WriteString
	mov eax, sum
	call WriteInt

	call Crlf
	call WaitMsg

exit
main ENDP
END main