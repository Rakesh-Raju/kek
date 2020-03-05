.global find_max_s

@r0 = array
@r1 = array len

find_max_s:
	MOV ip, #0
	MOV r3, #0
	
	loop:
		LDR r2, [r0]
		CMP r3, r2
    BGT max
		ADD r0, r0, #4
    ADD ip, ip, #1
		CMP ip, r1
    BLT loop
    MOV r3, r2
		bx lr
  
  max:
  MOV r3, r2

