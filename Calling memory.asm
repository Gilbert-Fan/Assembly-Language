DATAS SEGMENT
    ;�˴��������ݶδ��� 
    
    A0 DB 10
    A1 DB 'A',1,'B'
    A2 DW 1
    A3 DW 3,4
    A4 DW 10 DUP (?)
     
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
    
    MOV AX,0
    MOV BX,1
    
ADDAGAIN:
    CMP BX,3
    JA OVER
    ADD AX,BX
    INC BX
    JMP ADDAGAIN
    
;L0:
    ;MOV DL,AL
    ;ADD DL,48
    ;MOV AH,2
    ;INT 21H
    
OVER:
	MOV SI,OFFSET A4
	MOV [SI],AX
	MOV DX,[SI]
	ADD DL,48
	MOV AH,2
	INT 21H

    MOV AH,4CH
    INT 21H
CODES ENDS
    END START

