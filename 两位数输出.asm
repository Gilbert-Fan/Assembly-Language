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
    
    MOV AX,12
    MOV CL,10
    DIV CL ;SHANG-AL=1,YUSHU-AH=2
    MOV BL,AH
    
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV DL,BL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
