.ORIG x3000
 ; assumes that registers start at 0
LEA R0, D
LDW R1, R0, #0
AND R0, R1, #0
AND R0, R1, #3 ; with imm val
AND R2, R1, #-2
AND R3, R1, R2 ; all distinct regs
AND R3, R3, x-1
AND R1, R1, R1 ; dest and both src are same
TRAP x25
D .FILL xFFFF
.END