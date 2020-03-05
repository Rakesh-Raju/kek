.global fib_rec_s

fib_rec_s:

	push {lr}	

	fibo:
	push {lr}
	CMP r0, #2
	blt base
	SUBS r1, r0, #1
	bl fibo
	SUBS r2, r0, #2
	bl fibo


	base:
	ADD r0 , r0, #1
	pop {lr}
	bx lr
	 
