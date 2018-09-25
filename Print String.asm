DATAS SEGMENT
    ;此处输入数据段代码  
    
    AO DB 1
    A1 DB 'A','B','C','D','E','F','!'
    
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
    
    MOV SI,OFFSET A1
    
L0:
    MOV DL,[SI]
    CMP DL,'!'
    JB OVER
    
    MOV AH,2
    INT 21H
    ADD SI,1
    JMP L0
    
OVER:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
