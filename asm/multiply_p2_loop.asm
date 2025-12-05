; multiply by power 2 loop code

START:
    LOADI R0, #10   ;constant-the number we are multiplying (10)
    LOADI R1, #0    ;exponent counter-to go up with the loop
    LOADI R2, #8    ; the max value the exponent can have
    LOADI R4, #0    ;memory index-where the value calculated will be stored
    LOADI R5, #1

loop:
    SHFT R3,R1,R2 ;constant = constant << exponent
    STORE R3,R4 ;mem[R4]=R3

    ADD R1, R1,R5 ;exponent counter ++
    ADD R4,R4,R5 ;memory index ++

    SUB R6, R1, R2
    BNE loop

HALT






