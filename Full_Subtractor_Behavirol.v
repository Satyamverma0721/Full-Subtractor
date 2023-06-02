`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2023 23:01:50
// Design Name: 
// Module Name: Full_Subtractor_Behavirol
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


module Full_Subtractor_Behavirol(
input a,
input b,
input c, 
output  reg diff,
output reg borrow
);
  always@(*)
    begin
    case({a,b,c})
    3'b000:begin diff = 1'b0;borrow = 1'b0;end
    3'b001:begin diff = 1'b1;borrow = 1'b1;end
    3'b010:begin diff = 1'b1;borrow = 1'b1;end
    3'b011:begin diff = 1'b0;borrow = 1'b1;end
    3'b100:begin diff = 1'b1;borrow = 1'b0;end
    3'b101:begin diff = 1'b0;borrow = 1'b0;end
    3'b110:begin diff = 1'b0;borrow = 1'b0;end
    3'b111:begin diff = 1'b1;borrow = 1'b1;end
    
    endcase
    end
endmodule
