DATAS SEGMENT
    ;�˴��������ݶδ���  
    
    AO DB 1
    A1 DB 'A','B','C','D','E','F','!'
    
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
