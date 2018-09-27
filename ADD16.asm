data segment
num1 dw 0190H
num2 dw 0070H
res dw ?
carry db 00H
data ends
code segment
assume CS:code,DS:data
start:mov ax,data
mov DS,ax
mov AX,num1
mov BX,num2
ADD AX,BX
JNC down
down : mov carry,01
mov res,AX
code ends
end start

