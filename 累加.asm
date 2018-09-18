DATAS SEGMENT
    ;此处输入数据段代码  
DATAS ENDS

STACKS SEGMENT
    ;此处输入堆栈段代码
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    
    MOV AH,0
    MOV AL,1

L0:    
    ADD AH,AL
    ADD AL,1
    CMP AL,30
    JNA L0
    
    MOV AL,AH
    MOV AH,0
    MOV CL,10
    MOV CH,0
    
L1:
	MOV AH,0
    DIV CL;SHANG-AL,YUSHU-AH
    PUSH AX
    ADD CH,1
    CMP AL,10
    JNB L1
    
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
L2:
    POP DX
    SUB CH,1
    MOV DL,DH
    ADD DL,48
    MOV AH,2
    INT 21H
    CMP CH,0
    JA L2
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
