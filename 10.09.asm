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
    
    MOV CL,0
    MOV BX,0
    
    MOV AH,1
    INT 21H
    
    CMP AL,'0'
    JB OVER
    CMP AL,'9'
    JA OVER
    
    MOV AH,0
    MOV DX,AX
    MOV BX,AX
    MUL CL
    ADD BX,AX
    
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
