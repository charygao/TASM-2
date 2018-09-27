data segment
A db 010,011,05,013,014,06,03,01,0H
data ends
code segment
assume CS:code, DS:data
start : MOV AX,data
		MOV DS,AX
		MOV CH,08H
back1 : MOV CL,08H
		LEA SI,A
		
back  : MOV AL,[SI]
		MOV BL,[SI+1]
		CMP BL,AL
		JC skip
		MOV DL,[SI+1]
		XCHG [SI],DL
		MOV [SI+1],DL
skip  : INC SI
		DEC CL
		JNZ back
		DEC CH
		JNZ back1
		INT 3
code ends
end start