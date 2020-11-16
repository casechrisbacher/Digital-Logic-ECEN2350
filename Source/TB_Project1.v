`timescale 1 ns /  100 ps
module TB_Project_ ();
reg [1:0]key;
reg [9:0]sw;
wire [9:0]led;
wire [7:0] H0, H1, H2, H3, H4, H5;
integer i;

 
Project1 Project1_inst (
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
       $dumpfile("Unit1.vcd");
       $dumpvars;
       $display ("Starting simulation.....");
       sw = 10'b1010101010;
       key[0] = 1;
       key[1] = 1;
       #10 key[0] = 0;
       #10 key[1] = 0;      //Starts 11, then 01, then 00
        
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
