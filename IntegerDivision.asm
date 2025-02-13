@R2
M=0           

@R3
M=0            

@R4
M=0            

@R1           
D=M
@Not
D;JEQ         

@R4
M=0         
@Begin       
0;JMP

(Not)
@R4
M=1         
@END
0;JMP

(Begin)
@R0          
D=M
@R1        
D=D-M        
@Negative
D;JLT         

(LOOP）
@R2         
M=M+1
@R0        
D=M
@R1
D=D-M
@R0
M=D           
@R0     
D=M
@R1
D=D-M
@LOOP
D;JGE      

@R3       
M=D
@END
0;JMP

(Negative)
@R0
D=M           
@R3
M=D              
