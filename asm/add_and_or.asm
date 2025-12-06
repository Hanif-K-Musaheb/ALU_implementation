; the following program checks if two operands
; are safe to preform bitwise or on.
; R0 = 0xAA
; R1 = 0x55
; R2 = the result of or if safe, otherwise 0
START:
    LOADI R0, #0xAA
    LOADI R1, #0x55
    LOADI R2, #0
    AND   R3, R0, R1
    BEQ   R3, #0, ISSAFE
    B     DONE
ISSAFE:
    OR    R2, R0, R1
DONE:
    HALT
