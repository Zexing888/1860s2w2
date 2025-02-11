@R2
M=0
@R1
D=M
@Not
0;JEQ
@R4
M=0
@Begin
0;JMP
(Not)
@R4
M=1

(Begin)
@R0
D=M
@R1
D=D-M
@Negative
0;JLT 

(LOOP)
@R2
M=M+1
@R1
D=M
@R0
M=M-D
@R0
D=M
@R1
D=D-M 
@LOOP
0;JGE
@END
0;JMP

(Negative)
@R0
D=M
@R3
M=D

(END)
@END
0;JMP