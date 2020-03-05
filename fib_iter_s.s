.global fib_iter_s

fib_iter_s:
	MOV r3, r0
	MOV r0, #1
	MOV r1, #1

	loop:
		MOV r2, r1
		ADD r1, r0, r1
		MOV r0, r2
		SUB r3, #1
		CMP r3, 0
		BNE loop
		MOV r0, r1
		br lr