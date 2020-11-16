module Project1U2(
       input [1:0] KEY,
       input [9:0] SW,
       output reg [9:0] LEDR,
       output reg [7:0] HEX0, HEX2, HEX3, HEX4,
       output [7:0] HEX1, HEX5
);

reg [3:0] input1;
reg [3:0] input2;
segments U6( .my_in(input1[3:0]), .segs(HEX5[7:0])); 
segments U7( .my_in(input2[3:0]), .segs(HEX1[7:0]));

always @(*) begin
   LEDR[9:3] = 7'b0000000;
   HEX0 = 8'b1111_1111;
   HEX2 = 8'b1111_1111;
   HEX4 = 8'b1111_1111;

   input1[3:0] = SW[7:4];
   input2[3:0] = SW[3:0];

   if(input1 == input2)
    begin
        LEDR[2] = 1;
        LEDR[1] = 0;
        LEDR[0] = 0;
        HEX3 = 8'b1000_0110;
    end
    else if (input1 > input2)
     begin
        LEDR[2] = 0;
        LEDR[1] = 1;
        LEDR[0] = 0;
        HEX3 = 8'b1111_1111;
     end
     else if (input1 < input2)
     begin
        LEDR[2] = 0;
        LEDR[1] = 0;
        LEDR[0] = 1;
        HEX3 = 8'b1100_0111;
     end




   end
endmodule