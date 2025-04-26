; Part a.
LXI H, 2050H
MOV A, M
INX H
ADD M
STA 2052H
HLT

; Part b.
LDA 2050H      ; Load first number into A
MOV B, A       ; Save it in register B

LDA 2051H      ; Load second number into A
ADD B          ; A = A + B (no carry handled)

STA 2052H      ; Store result at 3050H
HLT            ; End program
