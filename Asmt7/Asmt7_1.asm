; Asmt7_1.asm - DifferentInputs returns EAX=1 if the values of its three input parameters are all different; otherwise, return with EAX=0

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
AddThree proto num1:dword, num2:dword, num3:dword




.data
val1 DWORD 20h
val2 DWORD 33h
val3 DWORD 4ah




.code
main proc

    invoke AddThree, val1, val2, val3

    invoke ExitProcess, 0

main endp




AddThree PROC, num1:dword, num2:dword, num3:dword

mov eax, num1
add eax, num2
add eax, num3
ret

AddThree ENDP

END main