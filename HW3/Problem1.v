module bob (a, b, c, d, select_in, x, y)
input a, b, c, d, e, select_in;
output x, y;
assign x = select_in ? a : b;
assign y = select_in ? c : d;

endmodule