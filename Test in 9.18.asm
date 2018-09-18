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
    
    MOV AX,?
    CMP AX,10
    JB L0
    CMP AX,10
    JE L1
    
    MOV DL,'C'
    MOV AH,2
    INT 21H
    JMP OVER
    
L0:
	MOV DL,'A'
    MOV AH,2
    INT 21H
    JMP OVER
L1:
	MOV DL,'B'
    MOV AH,2
    INT 21H
    JMP OVER
    
OVER:    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
