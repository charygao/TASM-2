data segment
n1 dw 0070H
n2 dw 0150H
r dw ?
s db 00H
data ends
code segment
assume CS:code,DS:data
start:mov ax,data
mov DS,ax
mov AX,n1
mov BX,n2
SUB AX,BX
JNC skip
mov s,01H
NOT AX
ADD AX,01H
skip:mov r,AX
code ends
end start
