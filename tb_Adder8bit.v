`timescale 1ns/1ps

module tb_Adder8bit;

reg  [7:0] A, B;
reg        Cin;
wire [7:0] Sum;
wire       Cout;

Adder8bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $display("Time\tA\t\tB\t\tCin\tSum\t\tCout");
    $monitor("%0dns\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A = 8'b00000001; B = 8'b00000010; Cin = 0; #10;
    A = 8'b00001111; B = 8'b00000001; Cin = 0; #10;
    A = 8'b11111111; B = 8'b00000001; Cin = 0; #10;
    A = 8'b10101010; B = 8'b01010101; Cin = 1; #10;
    A = 8'b11110000; B = 8'b00001111; Cin = 1; #10;
    A = 8'b10000000; B = 8'b10000000; Cin = 0; #10;

    $finish;
end

endmodule
