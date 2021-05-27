sw x0, 0(x0) 		//0(x0) = n1 = 0
addi x7, x0, 1		//x7 = n2 = 1
sw x7, 4(x0)		//4(x0) = n2 = 1
addi x7, x0, 20		//x7 = 20
sw x7, 8(x0)		//12(x0) = number = 20
lw x5, 8(x0)
addi x4, x0, 2		//x4 = i = 2

lui x9, 83333120  	//delay constant
addi x9, x9, 213

lw x1, 0(x0)        //x1 = n1
lw x2, 4(x0)		//x2 = n2
loop:
add x3, x1, x2		//x3 = x1 + x2 //n3 = n1 + n2
addi x1, x2, 0		//x1 = x2 + 0 //n1 = n2
addi x2, x3, 0		//x2 = x3 + 0 //n2 = n3
//output
sw x3, 0(any address > 0xFFFF) //output to port
//delay
addi x8, x0, 0		//x8 = x0 + 0 // delay counter = 0
delay:
addi x8, x8, 1
blt x8, x9, delay
addi x4, x4, 1		//x4 = x4 + 1 //i = i + 1
blt x4, x5, loop