; Multiplies some constant by powers of 2 and leaves
; the result in consecutive registers
; R0 = input value
; R1 = the greatest power of two we multiply by
; R2 = constant x 2
; R3 = constant x 4
; R4 = constant x 8
; R5 = constant x 16
; R6 = constant x 32
; R7 = constant x 64
START:
    LOADI R0, #3
    LOADI R1, #6
    LOADI R2, #1
    SHFT R2, R0, R2
    LOADI R3, #2
    SHFT R3, R0, R3
    LOADI R4, #3
    SHFT R4, R0, R4
    LOADI R5, #4
    SHFT R5, R0, R5
    LOADI R6, #5
    SHFT R6, R0, R6
    LOADI R7, #6
    SHFT R7, R0, R7
END:
    HALT
