data segment
a db 01,02,03,04,05,06,07,08,09H
high1 db ?
data ends
code segment
ASSUME CS:code,DS:data
start:
mov AX,data
mov DS,AX
mov AL,00h
LEA SI,a
mov CX,000AH
back:
CMP AL,[SI]
JNC skip
mov AL,[SI]
skip:
INC SI
LOOP back
mov high1,AL
code ends
end start

