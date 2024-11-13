`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 04:54:04
// Design Name: 
// Module Name: cnt
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


module cnt(
input clk,
input rstb,
output reg [1:0] out // output should be reg if it is in always @ (posedge clk)
    );
    reg [2:0] counter;

 
    always @(posedge clk or negedge rstb) begin
        if (!rstb) begin
            counter<=0;
            out <=0;

        end
        else begin
            if (counter <4) begin //0,1,2,3
                counter<=counter+1;
                out<=1;
                end
            else if ( counter <7) begin //4,5,6
                counter <=counter+1;
                out<=2;
                end
            else if (counter ==7) begin
                counter<=0;
                out<=0;
                end 
            end
        end
endmodule
