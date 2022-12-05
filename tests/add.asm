.ORIG x3000
 ; assumes that registers start at 0
ADD R1, R0, #3 ; with imm val
ADD R2, R0, #-2
ADD R3, R1, R2 ; all distinct regs
ADD R3, R3, x-1
ADD R1, R1, R1 ; dest and both src are same
.END