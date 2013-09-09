
.ORIG x3000
	LEA R0, PRIMES	;load the address of primes in register 0
	LD R1, SIZE	;load the size of array in r1
	LD R2, COUNT	;load (A)counter to r2

INIT	STR R2, R0, 0	;Store value of A in current array index
	ADD R2,R2, 1	;increment counter
	ADD R0, R0, 1	;point to next element in array
	ADD R1, R1, -1 	;decrement counter
	BRp INIT	;loop back while size is postive

	
	LEA R0, PRIMES	;loop to beginning of array
	ADD R0, R0, 1	;point to index 1
	AND R5, R5, 0	;clear r5
	STR R5, R0, 0	;set array[1] to 0;
	LD R1, SIZE2	;load size2
	LD R2, COUNT	;reset count
	ADD R2, R2, 1	;increment count to 1
	
	
	
	
NXTNDX 	ADD R0, R0, 1	;move to next index
	ADD R2, R2, 1	;increment counter
	ADD R1, R1, -1	;decrement size
	BRz DONE	
	LDR R3, R0, 0 	;load value of array[i] in r4
	BRz NXTNDX	;loop to next index
	
	
LOP2ND 	ADD R3, R3, R2 	;r3 = r3 + r2 (count)
	LEA R4, PRIMES	;load primes to r4
	ADD R4, R4, R3	;move to array[r3]
	AND R5, R5, 0	;clear r0
	STR R5, R4, 0	;array[r4] = 0
	
	NOT R6, R3	;not r3 and store in r6
	ADD R6, R6, 1	;add 1 to (negate r3)
	LD R7, SIZE
	ADD R6, R7, R6	;subtract r6 from r1
	BRp LOP2ND
	BR NXTNDX		
	
DONE	HALT

SIZE	.FILL 3001
SIZE2 	.FILL 55
COUNT   .FILL 0
PRIMES	.BLKW 3001


.END
