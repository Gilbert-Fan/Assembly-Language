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
