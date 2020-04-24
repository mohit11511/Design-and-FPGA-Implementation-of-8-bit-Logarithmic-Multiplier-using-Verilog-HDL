`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2020 16:01:44
// Design Name: 
// Module Name: logval_tb
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


module logval_tb(); 
reg [7:0] in_x,in_y; 
wire [3:0] out_x,out_y; 
 
logval u(.in_x(in_x),.in_y(in_y),.out_x(out_x),.out_y(out_y)); 
initial 
begin  
in_x=2; in_y=2; 
end 
initial 
#500 $finish; 
 
 
always 
begin 
#5 in_x = in_x+1; 
#5 in_y = in_y+1; 
end 
endmodule
