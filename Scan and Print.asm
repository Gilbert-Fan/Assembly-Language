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
    
    MOV CL,10
    
    MOV AH,1
    INT 21H
    CMP AL,39
    JA L1
    MUL AL,CL
    
L1:    
    MOV DL,AL
    ;ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START

