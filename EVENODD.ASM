data segment
series db 02,03,04,05,06,07,08,09,01,0AH
even db ?
odd db ?
data ends
code segment
ASSUME CS:code,DS:data
start:mov AX,data
mov DS,AX
mov CL,0AH
XOR BL,BL
XOR DL,DL
LEA SI,series
next2:mov AL,[SI]
SHR AL,01H
JNC next1
INC BL
JMP next3
next1:INC DL
next3:INC SI
DEC CL
JNZ next2
mov even,DL
mov odd,BL
code ends
end start
