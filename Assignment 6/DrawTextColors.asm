; DrawTextColors.asm - displays the same string in four different colors

INCLUDE Irvine32.inc


.data
str1 BYTE "Example colored text", 0




.code
main PROC

	mov ecx, 4
	mov eax, green + (white * 16)
	mov edx, OFFSET str1

	L1:
		call SetTextColor
		call WriteString
		call Crlf
		inc eax
	loop L1

	call WaitMsg

exit
main ENDP
END main