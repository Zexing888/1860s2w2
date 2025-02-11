@R2
M=0              // 初始化商（R2 = 0）

@R3
M=0              // 初始化余数（R3 = 0）

@R4
M=0              // 初始化标志位为 0（表示除法有效）

@R1              // 加载除数 y 到 D 寄存器
D=M
@Not
D;JEQ           // 如果除数为 0，则跳转到 Not 标签

@R4
M=0             // 除法有效，设置标志位 R4 为 0
@Begin          // 跳转到除法开始部分
0;JMP

(Not)
@R4
M=1             // 除法无效，设置标志位 R4 为 1
@END
0;JMP

(Begin)
@R0              // 加载被除数 x 到 D 寄存器
D=M
@R1              // 加载除数 y
D=D-M            // 计算 x - y
@Negative
D;JLT            // 如果 D < 0，跳转到 Negative 标签

(LOOP)
@R2              // 增加商
M=M+1
@R0              // 从 x 中减去 y
D=M
@R1
D=D-M
@R0
M=D              // 更新 x（x = x - y）
@R0              // 如果 x >= y，继续循环
D=M
@R1
D=D-M
@LOOP
D;JGE            // 如果 x >= y，继续循环

@R3              // 将剩余值存入余数
M=D
@END
0;JMP

(Negative)
@R0
D=M              // 处理负数的符号
@R3
M=D              // 保存负数的符号
