

.global fib_iter_s

fib_iter_s:
	CMP r0, #0
	beq base
	CMP r0, #1
	beq base

	MOV r1, #0
	MOV r2, #0
	MOV r3, #1

	loop:
	MOV r1, r2
	MOV r2, r3
	ADD r3, r1, r2
	
	SUBS r0, #1
	CMP r0, #1
	bne loop

	MOV r0, r3
	MOV pc, lr

	base:
	mov pc, lr
