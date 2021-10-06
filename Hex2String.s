@ Andrew Webb 27/10/2020
@ A simple Arm Assembly program that will 
@ convert a hexadecimal value to a ASCII string 
@ and store it in r0

	.text

start:

LDR r0, =0XA1000407
LDR r1, =0x00077ABC
MOV r2, #0
MOV r3, #0
LDR r4, =0xFFFFFFFE
MOV r5, #1
MOV r6, #16
MOV r7, #0
MOV r9, #2
MOV r10, #0
       
loop2: BIC r8, r1, r4
       MOV r8, r8, LSR r10
       ADD r2, r8
       SUB r4, r5
       MUL r5, r9
       ADD r7, #1
       CMP r7, #4
       BNE loop2

       MOV r7, #0 
       ADD r3, #1 
       ADD r10, #4       

       CMP r2, #0
       BCC endif1
       CMP r2, #9
       BHI endif1
       ADD r2, #48
    
    endif1: CMP r2, #0xa
            BCC endif3
            CMP r2, #0xf
            BHI endif3
            ADD r2, #55

    endif3: CMP r3, #9
            BEQ break
            STRB r2, [r0]
            SUB r0, #1
            MOV r2, #0
            B loop2
break:

stop:   B	stop
	.end