data segment
n1 dw 1234H
n2 dw 8286H
res dd ?
data ends
code segment
ASSUME CS:code,DS:data
start:mov AX,data
mov DS,AX
mov AX,n1
MUL n2
LEA BX,res
mov [BX],AX
mov [BX+2],DX
INT 3H
code ends
end start
