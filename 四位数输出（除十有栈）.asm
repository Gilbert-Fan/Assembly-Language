DATAS SEGMENT
    ;�˴��������ݶδ���  
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
    MOV AX,1234
    MOV CL,10
    MOV SI,0
    
    DIV CL;SHANG-AL=123,YUSHU-AH=4
    PUSH AX
    INC SI
    
    MOV AH,0
    DIV CL;SHANG-AL=12,YUSHU-AH=3
    PUSH AX
    INC SI
    
    MOV AH,0
    DIV CL;SHANG-AL=1,YUSHU-AH=2
    PUSH AX
    INC SI
    
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    POP BX
    MOV DL,BH
    ADD DL,48
    MOV AH,2
    INT 21H
    
    POP CX
    MOV DL,CH
    ADD DL,48
    MOV AH,2
    INT 21H
    
    POP DX
    MOV DL,DH
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
