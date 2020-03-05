.global quadratic_s

quadratic_s:
							
	MUL r12, r0, r0 		
	MUL r12, r12, r1 		
	MUL r0, r0, r2 			
	ADD r0, r0, r12, r3 	
	br lr 					

