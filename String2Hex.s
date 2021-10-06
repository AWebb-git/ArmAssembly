@ Andrew Webb 27/10/2020
@ A simple Arm Assembly program that will 
@ convert a ASCII string representing a hexadecimal value
@ to said value in hexadecimal and store it in r0


	.text

start:

LDR r1, =TestStr
MOV r3, #0
MOV r6, #16

loop1: LDRB r2, [r1], #1
       ADD r3, r3, #1
       CMP r2, #0
       BNE loop1
       SUB r3, r3, #2
       
LDR r1, =TestStr
       
loop2: LDRB r2, [r1], #1
       
       CMP r2, #'0'
       BCC endif1
       CMP r2, #'9'
       BHI endif1
       SUB r2, #48
    
    endif1: CMP r2, #'a'
            BCC endif2
            CMP r2, #'z'
            BHI endif2
            SUB r2, #87

    endif2: CMP r2, #'A'
            BCC endif3
            CMP r2, #'Z'
            BHI endif3
            SUB r2, #55
        
    endif3: CMP r2, #0
            BEQ break
            MOV r4, r3
            CMP r4, #0
            BEQ endadd 
    addloop: MUL r2, r6
             SUB r4, #1
             CMP r4, #0
             BNE addloop
    endadd: ADD r0, r2
            SUB r3, #1
            B loop2
break:
   

stop:   B	stop
	.data
TestStr:	.asciz	"123aBc12"
	.end
