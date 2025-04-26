LDA 2050H
MOV H, A
LDA 2051H 
ADD H 
MOV L, A
MVI A, 00H
ADC A
MOV H, A
SHLD 3050H
HLT
; WARNING : Do not forget to add H at the end of the memory location number. Also, there should be a preceding 0 for memory locations starting from an alphabet(LDA F100H is wrong, LDA 0F100H is correct)
