`timescale 10 ns / 1 ns
module tbp3();
reg [7:0]a, b;
wire x;
Problem3 U1 (.a(a), .b(b), .x(x));
initial
begin
$dumpfile("out.vcd");
$dumpvars;
$display("Starting simulation");
a = 8'b1010_0101;
b = 8'b0101_0101;
$display("Case Chrisbacher");
$finish;
end
initial
$monitor ("a = %b,b = %b,x = %b", a, b, x);


endmodule