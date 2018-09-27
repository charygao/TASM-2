data segment
num1 db 90H
num2 db 70H
res db ?
carry db 00H
data ends
code segment
assume CS:code,DS:data
start:mov ax,data
mov DS,ax
mov AL,num1
mov BL,num2
ADD AL,BL
JNC down
down : mov carry,01
mov res,AL
code ends
end start
