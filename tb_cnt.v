`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 04:58:12
// Design Name: 
// Module Name: tb_cnt
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


module tb_cnt;
reg rstb, clk;

wire [1:0] out;

cnt dut(.rstb(rstb), .clk(clk), .out(out));
always #5 clk = ~clk;
initial begin
rstb=0; // apply reset
clk=0;
#10 rstb=1; //release reset
#100
$finish;
end

endmodule
