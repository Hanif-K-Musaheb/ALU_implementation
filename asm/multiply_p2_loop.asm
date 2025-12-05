; multiply_p2_loop.asm
; Computes 10 * 2^n for n = 0..8 and stores at mem[0..8]

START:
    LOADI R0, #10    ; constant
    LOADI R1, #0     ; exponent counter (n)
    LOADI R2, #9     ; final exponent
    LOADI R4, #0     ; memory index (address)
    LOADI R5, #1     ; increment constant

loop:
    SHFT  R3, R0, R1   ; R3 = 10 << n
    STORE R3, [R4]     ; store R3 at memory[address in R4]

    ADD   R1, R1, R5   ; n++
    ADD   R4, R4, R5   ; address++

    SUB   R6, R1, R2   ; set zero flag if n == final
    BNE   loop

HALT


;    multiply_p2_loop.asm

