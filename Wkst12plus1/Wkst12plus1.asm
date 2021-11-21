; Wkst12plus1.asm - DifferentInputs returns EAX=1 if the values of its three input parameters are all different; otherwise, return with EAX=0

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
DifferentInputs proto num1:dword, num2:dword, num3:dword




.data
val1 DWORD 20h
val2 DWORD 33h
val3 DWORD 4ah




.code
main proc

    invoke DifferentInputs, val1, val2, val3

    invoke ExitProcess, 0

main endp




DifferentInputs proc, num1:dword, num2:dword, num3:dword
    
    mov eax, 1
    mov num1, eax
    cmp num2, eax
    je L2
    cmp num3, eax
    je L2
    jmp exit

L2: mov eax, 0
exit: ret

DifferentInputs endp

end main
