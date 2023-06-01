`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2023 21:56:11
// Design Name: 
// Module Name: TB_Full_Subtractor
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


module TB_Full_Subtractor(  );
reg a;
reg b;
reg cin;
wire diff;
wire borrow;
Full_Subtractor d0(.a(a),.b(b),.cin(cin),.diff(diff),.borrow(borrow));
initial begin 
 a = 0; b = 0; cin = 0;
#100; a = 0; b = 0; cin = 1;
#100; a = 0; b = 1; cin = 0;
#100; a = 0; b = 1; cin = 1;
#100; a = 1; b = 0; cin = 0;
#100; a = 1; b = 0; cin = 1;
#100; a = 1; b = 1; cin = 0;
#100; a = 1; b = 1; cin = 1;

end
endmodule
