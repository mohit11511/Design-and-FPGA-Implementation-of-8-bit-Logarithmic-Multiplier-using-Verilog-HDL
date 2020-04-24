`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2020 09:48:25
// Design Name: 
// Module Name: adder
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


module antilogval(c,n_var_1,n_var_2);
input [7:0] n_var_1,n_var_2;
output reg [15:0] c;
wire [3:0] x;
wire [3:0] y;
wire [4:0] s;

logval u(n_var_1,n_var_2,x,y);
assign s=x+y;

function integer cantilog2;
input [4:0] value;
begin
cantilog2=2**value;
end
endfunction

always@(s)
begin
c=cantilog2(s);
end

endmodule

