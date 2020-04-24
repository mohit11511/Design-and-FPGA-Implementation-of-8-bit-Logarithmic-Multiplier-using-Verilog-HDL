`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2020 16:59:15
// Design Name: 
// Module Name: antilogval_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module antilogval_tb();
reg [7:0]n_var_1,n_var_2;
wire [15:0]c;

antilogval al(.c(c),.n_var_1(n_var_1),.n_var_2(n_var_2));
initial 
begin  
n_var_1=2; n_var_2=2; 
end 
initial 
#500 $finish;

always
begin 
#5 n_var_1=n_var_1+1; 
#5 n_var_2=n_var_2+1; 
end 

endmodule
