.global fib_rec_s

fib_rec_s:
push {lr}
mov r1, #0
mov r2, #1

bl fibo
pop {lr}

bx lr


fibo:
	push {lr, r4, r5}
	cmp r0, r1
	beq eq0
	cmp r0, r2
	beq eq1

	mov r3, r0
	sub r0, r0, #2
	bl fibo

	mov r4, r0
	sub r0, r0, #1
	bl fibo

	ADD r0, r0, r4



eq0:
Mov r0, r1
pop {lr}
bx lr

eq1:
mov r0, r2
pop {lr}
bx lr
