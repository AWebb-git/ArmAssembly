@Andrew Webb 7/10/2020
@simple arm assembly program that calculates parity bit for value in r0 and stores it in 7th bit of r0

.text
start:

LDR	r0, =0x16

BIC r1, r0, #0xFE

BIC r2, r0, #0xFD
MOV r2, r2, LSR #1

BIC r3, r0, #0xFB
MOV r3, r3, LSR #2

BIC r4, r0, #0xF7
MOV r4, r4, LSR #3

BIC r5, r0, #0xEF
MOV r5, r5, LSR #4

BIC r6, r0, #0xDF
MOV r6, r6, LSR #5

BIC r8, r0, #0xBF
MOV r8, r8, LSR #6



CMP r1, #1
ADDEQ r9, #1
CMP r2, #1
ADDEQ r9, #1
CMP r3, #1
ADDEQ r9, #1
CMP r4, #1
ADDEQ r9, #1
CMP r5, #1
ADDEQ r9, #1
CMP r6, #1
ADDEQ r9, #1
CMP r8, #1
ADDEQ r9, #1

CMP r9, #1
ADDEQ r0, #0x80
CMP r9, #3
ADDEQ r0, #0x80
CMP r9, #5
ADDEQ r0, #0x80
CMP r9, #7
ADDEQ r0, #0x80


stop:   B	stop
	.data
	.end
