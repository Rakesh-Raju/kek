.global find_max_s

find_max_s:
	
	LDR r2,[r0]
	MOV r3, r2

	loop:
	CMP r1, #1
	beq end
	
	ADD r0, r0, #4
	LDR r2, [r0]
	CMP r2, r3
	bgt max
	SUBS r1, r1, #1
	b loop

	max:
	MOV r3, r2	

	end:
	MOV r0, r3
	MOV pc, lr
