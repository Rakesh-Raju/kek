.global sum_array_s

sum_array_s:
	MOV r3, #0
	
	loop:	
		SUBS r1 , r1, #1
		LDR r2, [r0]
		ADD r3, r2
		ADD r0, r0, #4
		CMP r1, #0
		bgt loop
	
		MOV r0, r3
		MOV pc, lr


