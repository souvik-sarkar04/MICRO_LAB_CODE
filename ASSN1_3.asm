; Without borrow part 1
MVI A, 05H
MVI B, 03H
SUB B
STA 2050H
HLT

; Without borrow part 2
LXI H, 2050H
MOV A, M
INX H
SUB M
STA 2052H
HLT

; With borrow
MVI C, 00H
LDA 2050H ; First number(x)
MOV B,A
LDA 2051H ; Second number(y)
SUB B ; Second number - First number
JNC LOOP ;If no carry
CMA ; Carry code starts -> take 1s complement(Complement accumulator - CMA)
INR A -> take 2s complement(add 1 to 1s complement stored in A) -> (say x-y<0 -> binary format of negative difference (x-y) is converted to its absolute value(using 2s complement) and then stored in A
INR C -> Presence of carry -> will suggest x-y<0
LOOP: STA 2052H ;If no carry then store the difference
MOV A,C ; Store carry
STA 2053H
HLT

; IMPORTANT WARNING : Some 8085 platforms do not support lines of code that have only comments and no code
