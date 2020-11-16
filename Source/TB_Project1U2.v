`timescale 1 ns /  100 ps
module TB_ProjectU2_ ();
reg [1:0]key;
reg [9:0]sw;
wire [9:0]led;
wire [7:0] H0, H1, H2, H3, H4, H5;
integer i;

 
Project1U2 Project1U2_inst (
        .KEY(key), 
        .SW(sw), 
        .LEDR(led), 
        .HEX0(H0),
        .HEX1(H1),
        .HEX2(H2),
        .HEX3(H3),
        .HEX4(H4),
        .HEX5(H5));
 
initial
   begin
       $dumpfile("Unit2.vcd");
       $dumpvars;
       $display ("Starting simulation.....");
       #10 sw = 10'b10_0101_0001; //more than
       #10 sw = 10'b11_0000_1100; //less than
       #10 sw = 10'b01_0110_0110; //equal
        
        #10
       $display ("Case Chrisbacher");
       $finish;
 
   end
initial begin
   $monitor(
       $time, "\n",
       "sw = %b ", sw, 
        "key = %b ", key,
        "led = %b ", led, "\n",
        "HEX0 = %b ", H0,
        "HEX1 = %b ", H1,
        "HEX2 = %b ", H2, "\n",
        "HEX3 = %b ", H3,
        "HEX4 = %b ", H4,
        "HEX5 = %b ", H5);
end
  
 
endmodule
