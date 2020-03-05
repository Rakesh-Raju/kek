.global quadratic_s

quadratic_s:
			
	MOV r12, r0				
	MUL r4, r12, r0 		
	MUL r12, r4, r1 		
	MUL r4, r0, r2 			
	ADD r12, r4, r3 
	MOV	
	bx lr 					

