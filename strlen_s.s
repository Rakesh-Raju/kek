.global strlen_s

strlen_s:
	
	LDRB r2, [r0]
	CMP r2 , #0
	beq base
	MOV r1, #0

	loop:
	ADD r0, r0, #1
	LDRB r2, [r0]
	CMP r2, #0
	beq terminate
	ADD r1, r1, #1 
	b loop

base:
	MOV pc, lr

terminate:
	ADD r1, r1, #1
	MOV r0, r1 
	MOV pc, lr
