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
    
    MOV AX,345
    MOV CL,100
    DIV CL ;SHANG-AL=1,YUSHU-AH=23
    MOV BL,AH
    
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV AH,0
    MOV AL,BL
    MOV CL,10
    DIV CL;SHANG-AL=2,YUSHU-AH=3
    MOV CH,AH
    
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV DL,CH
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START

