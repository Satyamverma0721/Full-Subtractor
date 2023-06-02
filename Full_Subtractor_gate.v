`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2023 22:50:52
// Design Name: 
// Module Name: Full_Subtractor_gate
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


module Full_Subtractor_gate(
input a, 
input b,
input cin,
output diff,
output borrow
);
wire l,m,n;
xor x1(l,a,b);
and a1(m,(~a),b);
xor x2(diff,l,cin);
and a2(n,cin,(~l));
or o1(borrow,m,n);
endmodule
