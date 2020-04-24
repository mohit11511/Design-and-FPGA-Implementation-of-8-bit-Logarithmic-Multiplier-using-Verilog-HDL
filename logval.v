`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2020 15:59:25
// Design Name: 
// Module Name: logval
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


module logval(in_x,in_y,out_x,out_y); 
input [7:0]in_x,in_y; 
output [3:0]out_x,out_y; 
reg [3:0]out_x,out_y;
 
function integer logb_2; 
input[7:0] value; 
integer i; 
begin 
i=0; 
logb_2=0; 
for(i=i ; 2**i<value ; i=i+1) 
logb_2=i+1; 
value=value>>1; 
end 
endfunction 

always@(*) 
begin 
out_x = logb_2(in_x); 
out_y = logb_2(in_y); 
end 
endmodule