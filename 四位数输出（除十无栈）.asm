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
    
    MOV AX,2567
    MOV CL,10
    DIV CL;SHANG-AL=234,YUSHU-AH=5
    MOV BL,AH
    
    MOV AH,0
    DIV CL;SHANG-AL=23,YUSHU-AH=4
    MOV BH,AH
    
    MOV AH,0
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
    
    MOV DL,BH
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
