@ Andrew Webb 20/10/2020
@ An ARM Assembly program that will count the number of patterns of 1
@ in a 32 bit value in r1 and store the value in r0
@ For example 00000001110001101111100110001111 will give 5 in r0.

.text

start:

LDR	R1, =0b01110001000111101100111000111111

LDR r9, =0xFFFFFFFE
BIC r0, r1, r9

LDR r9, =0xFFFFFFFD
BIC r2, r1, r9
MOV r2, r2, LSR #1

LDR r9, =0xFFFFFFFB
BIC r3, r1, r9
MOV r3, r3, LSR #2

LDR r9, =0xFFFFFFF7
BIC r4, r1, r9
MOV r4, r4, LSR #3

LDR r9, =0xFFFFFFEF
BIC r5, r1, r9
MOV r5, r5, LSR #4

LDR r9, =0xFFFFFFDF
BIC r6, r1, r9
MOV r6, r6, LSR #5

LDR r9, =0xFFFFFFBF
BIC r7, r1, r9
MOV r7, r7, LSR #6

LDR r9, =0xFFFFFF7F
BIC r8, r1, r9
MOV r8, r8, LSR #7

MOV r10, #0
CMP r0, #1
ADDEQ r10, #1

CMP r2, r0
BEQ endif1
CMP r2, #1
ADDEQ r10, #1

endif1:

CMP r3, r2
BEQ endif2
CMP r3, #1
ADDEQ r10, #1

endif2:

CMP r4, r3
BEQ endif3
CMP r4, #1
ADDEQ r10, #1

endif3:

CMP r5, r4
BEQ endif4
CMP r5, #1
ADDEQ r10, #1

endif4:

CMP r6, r5
BEQ endif5
CMP r6, #1
ADDEQ r10, #1

endif5:

CMP r6, r7
BEQ endif6
CMP r7, #1
ADDEQ r10, #1

endif6:

CMP r7, r8
BEQ endif7
CMP r8, #1
ADDEQ r10, #1

endif7:



LDR r9, =0xFFFFFEFF
BIC r0, r1, r9
MOV r0, r0, LSR #8

LDR r9, =0xFFFFFDFF
BIC r2, r1, r9
MOV r2, r2, LSR #9

LDR r9, =0xFFFFFBFF
BIC r3, r1, r9
MOV r3, r3, LSR #10

LDR r9, =0xFFFFF7FF
BIC r4, r1, r9
MOV r4, r4, LSR #11

LDR r9, =0xFFFFEFFF
BIC r5, r1, r9
MOV r5, r5, LSR #12

LDR r9, =0xFFFFDFFF
BIC r6, r1, r9
MOV r6, r6, LSR #13

LDR r9, =0xFFFFBFFF
BIC r7, r1, r9
MOV r7, r7, LSR #14



CMP r0, r8
BEQ endif9
CMP r0, #1
ADDEQ r10, #1

endif9:

LDR r9, =0xFFFF7FFF
BIC r8, r1, r9
MOV r8, r8, LSR #15

CMP r2, r0
BEQ endif10
CMP r2, #1
ADDEQ r10, #1

endif10:

CMP r2, r3
BEQ endif11
CMP r3, #1
ADDEQ r10, #1

endif11:

CMP r3, r4
BEQ endif12
CMP r4, #1
ADDEQ r10, #1

endif12:

CMP r4, r5
BEQ endif13
CMP r5, #1
ADDEQ r10, #1

endif13:

CMP r5, r6
BEQ endif14
CMP r6, #1
ADDEQ r10, #1

endif14:

CMP r6, r7
BEQ endif15
CMP r7, #1
ADDEQ r10, #1

endif15:

CMP r7, r8
BEQ endif16
CMP r8, #1
ADDEQ r10, #1

endif16:


LDR r9, =0xFFFEFFFF
BIC r0, r1, r9
MOV r0, r0, LSR #16

LDR r9, =0xFFFDFFFF
BIC r2, r1, r9
MOV r2, r2, LSR #17

LDR r9, =0xFFFBFFFF
BIC r3, r1, r9
MOV r3, r3, LSR #18

LDR r9, =0xFFF7FFFF
BIC r4, r1, r9
MOV r4, r4, LSR #19

LDR r9, =0xFFEFFFFF
BIC r5, r1, r9
MOV r5, r5, LSR #20

LDR r9, =0xFFDFFFFF
BIC r6, r1, r9
MOV r6, r6, LSR #21

LDR r9, =0xFFBFFFFF
BIC r7, r1, r9
MOV r7, r7, LSR #22



CMP r0, r8
BEQ endif17
CMP r0, #1
ADDEQ r10, #1

endif17:

LDR r9, =0xFF7FFFFF
BIC r8, r1, r9
MOV r8, r8, LSR #23

CMP r2, r0
BEQ endif18
CMP r2, #1
ADDEQ r10, #1

endif18:

CMP r2, r3
BEQ endif19
CMP r3, #1
ADDEQ r10, #1

endif19:

CMP r3, r4
BEQ endif20
CMP r4, #1
ADDEQ r10, #1

endif20:

CMP r4, r5
BEQ endif21
CMP r5, #1
ADDEQ r10, #1

endif21:

CMP r5, r6
BEQ endif22
CMP r6, #1
ADDEQ r10, #1

endif22:

CMP r6, r7
BEQ endif23
CMP r7, #1
ADDEQ r10, #1

endif23:

CMP r7, r8
BEQ endif24
CMP r8, #1
ADDEQ r10, #1

endif24:

LDR r9, =0xFEFFFFFF
BIC r0, r1, r9
MOV r0, r0, LSR #24

LDR r9, =0xFDFFFFFF
BIC r2, r1, r9
MOV r2, r2, LSR #25

LDR r9, =0xFBFFFFFF
BIC r3, r1, r9
MOV r3, r3, LSR #26

LDR r9, =0xF7FFFFFF
BIC r4, r1, r9
MOV r4, r4, LSR #27

LDR r9, =0xEFFFFFFF
BIC r5, r1, r9
MOV r5, r5, LSR #28

LDR r9, =0xDFFFFFFF
BIC r6, r1, r9
MOV r6, r6, LSR #29

LDR r9, =0xBFFFFFFF
BIC r7, r1, r9
MOV r7, r7, LSR #30



CMP r0, r8
BEQ endif25
CMP r0, #1
ADDEQ r10, #1

endif25:

LDR r9, =0x7FFFFFFF
BIC r8, r1, r9
MOV r8, r8, LSR #31

CMP r2, r0
BEQ endif26
CMP r2, #1
ADDEQ r10, #1

endif26:

CMP r2, r3
BEQ endif27
CMP r3, #1
ADDEQ r10, #1

endif27:

CMP r3, r4
BEQ endif28
CMP r4, #1
ADDEQ r10, #1

endif28:

CMP r4, r5
BEQ endif29
CMP r5, #1
ADDEQ r10, #1

endif29:

CMP r5, r6
BEQ endif30
CMP r6, #1
ADDEQ r10, #1

endif30:

CMP r6, r7
BEQ endif31
CMP r7, #1
ADDEQ r10, #1

endif31:

CMP r7, r8
BEQ endif32
CMP r8, #1
ADDEQ r10, #1

endif32:

stop:   B	stop
	.data
	.end

