.global strlen_s

strlen_s:
MOV r3, #0

	loop:
	LDR r2, [r0]
	ADD r0, r0, #4
	ADD r3, r3, #1
	CMP r2, #0
	BNE loop
	MOV r0,r3
	br lr
