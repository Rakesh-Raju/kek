.global sum_array_s

sum_array_s:
	MOV ip, #0
	MOV r3, #0
	
	loop:
		LDR r2, [r0]
		ADD r3, r2
		ADD r0, r0, #4
		CMP ip, r1
		blt loop
		MOV r0, r3
		br lr


