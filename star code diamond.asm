
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.MODEL SMALL
.STACK 100H
.DATA
STAR DB ?
BLANK DB ?
.CODE 
MAIN PROC
    MOV CX,5  ; 5 lines    
                 ;         *
               ;         * * *
               ;        * * * * 
               ;       * * * * * * 
               ;     * * * * * * * * 
    
    
   MOV BX,1  ; blank     1 : satr wa7ad hata7at fih blank     
   
   
    
   L1:
    PUSH CX  ; 5 line hasta5damhom man al stack    ( awal satr)
    
    
   L2:
    MOV AH,2
    MOV DL,32  ; blank
    INT 21H
    LOOP L2
    
    
    MOV CX,BX   ; hazawad al blanks fi al sotoor
    
   L3:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    LOOP L3
    
    MOV AH,2
    MOV DL,10   ; hanzal satr
    INT 21H
    MOV DL,13      ; hagib al satr man al 2awal
    INT 21H
    
    INC BX   ; hayzawad 2 blanks  ; ( * * * )
    INC BX
    
    POP CX      ; 5lasna al satr al awal
     
    LOOP L1    ; ha3id tanii 3ala al 4 alii fadlin 
    
    
    
    MOV CX,4
    MOV BH,7
    MOV BL,2
    
    MOV STAR,BH
    MOV BLANK,BL
    
   L4:
    CMP BLANK,0    ; blank > 0
    JE L5        
    
    ; law mafi4 blank ya3ni =0 
    
    MOV AH,2
    MOV DL,32   ; blank
    INT 21H   
    
    DEC BLANK   ; badal ma kano satran haykonoo satr ( bl = 1)  
    
    ;CMP BLANK,0
    JMP L4
    
   L5:
    MOV AH,2
    MOV DL,'*'
    INT 21H   
    
    DEC STAR
    CMP STAR,0  ; star >0
    JNE L5         
    
    
  L6:  
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    DEC BH     ; hi2alal man 3adad al nogoom (7)
    DEC BH
    
    MOV STAR,BH  ; hi5azan al stars alii at3amalat fi STAR
    
    INC BL  ; satr tanii gi blank
    
    MOV BLANK,BL
    
    LOOP L4 ; hi3id tanii 
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
         

ret
 




