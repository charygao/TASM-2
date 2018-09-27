data segment
a db 08,02,03,04,05,06,07,01,10,09H
high1 db ?
data ends
code segment
ASSUME CS:code,DS:data
start:
mov AX,data
mov DS,AX
mov AL,99h
LEA SI,a
mov CX,000AH
back:
CMP [SI],AL
JNC skip
mov AL,[SI]
skip:
INC SI
LOOP back
mov high1,AL
code ends
end start
