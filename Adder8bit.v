// 8-bit Ripple Carry Adder
module Adder8bit (
    input  [7:0] A,
    input  [7:0] B,
    input        Cin,
    output [7:0] Sum,
    output       Cout
);

wire [7:0] carry;

assign {carry[0], Sum[0]} = A[0] + B[0] + Cin;
assign {carry[1], Sum[1]} = A[1] + B[1] + carry[0];
assign {carry[2], Sum[2]} = A[2] + B[2] + carry[1];
assign {carry[3], Sum[3]} = A[3] + B[3] + carry[2];
assign {carry[4], Sum[4]} = A[4] + B[4] + carry[3];
assign {carry[5], Sum[5]} = A[5] + B[5] + carry[4];
assign {carry[6], Sum[6]} = A[6] + B[6] + carry[5];
assign {Cout, Sum[7]}     = A[7] + B[7] + carry[6];

endmodule
