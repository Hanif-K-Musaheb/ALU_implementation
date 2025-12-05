; Divides some constant by powers of 2 and leaves
; the result in consecutive registers
; R0 = input value
; R1 = last operand used by the program
; R2 = constant / 2
; R3 = constant / 4
; R4 = constant / 8
; R5 = constant / 16
; R6 = constant / 32
; R7 = constant / 64
START:
    LOADI R0, #0xC0
    LUI R0, #0x01
    LOADI R1, #0x06
    LUI R1, #0x80

    LOADI R2, #-1
    SHFT R2, R0, R2
    LOADI R3, #-2
    SHFT R3, R0, R3
    LOADI R4, #-3
    SHFT R4, R0, R4
    LOADI R5, #-4
    SHFT R5, R0, R5
    LOADI R6, #-5
    SHFT R6, R0, R6
    LOADI R7, #-6
    SHFT R7, R0, R7
DONE:
    HALT