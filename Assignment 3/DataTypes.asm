; DataTypes.asm - testing different data types.

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword


progInfo EQU <"testing different data types",0>


.data
; part 1
valByte BYTE 240
valSbyte SBYTE -120
valWord WORD 65000
valSWord SWORD -30000
valDWord DWORD 4000000000
valSDWord SDWORD -2000000000
valFWord FWORD 250000000000000
valQWord QWORD 18446744073709551000
valTByte TBYTE 70000000000000001234h
valReal4 REAL4 -1.1
valReal8 REAL8 3.1E-260
valReal10 REAL10 4.5E4096

; part 2
about BYTE progInfo




.code
main PROC

INVOKE ExitProcess,0
main ENDP
END main
