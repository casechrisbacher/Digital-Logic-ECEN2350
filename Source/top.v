
module top(input [1:0]KEY, input [9:0]SW, output reg [9:0]LEDR,  output reg [7:0]HEX0, output reg [7:0]HEX1, output reg [7:0]HEX2, output reg [7:0]HEX3, output reg [7:0]HEX4, output reg [7:0]HEX5);

    wire [9:0] ledU1;
    wire [7:0] HEX0U1;
    wire [7:0] HEX1U1;
    wire [7:0] HEX2U1;
    wire [7:0] HEX3U1;
    wire [7:0] HEX4U1;
    wire [7:0] HEX5U1;

    wire [9:0] ledU2;
    wire [7:0] HEX0U2;
    wire [7:0] HEX1U2;
    wire [7:0] HEX2U2;
    wire [7:0] HEX3U2;
    wire [7:0] HEX4U2;
    wire [7:0] HEX5U2;



    Project1 Project1_inst(
       .KEY(KEY[1:0]),
       .SW(SW[9:0]),
       .LEDR(ledU1[9:0]),
       .HEX0(HEX0U1[7:0]),
       .HEX1(HEX1U1[7:0]),
       .HEX2(HEX2U1[7:0]),
       .HEX3(HEX3U1[7:0]),
       .HEX4(HEX4U1[7:0]),
       .HEX5(HEX5U1[7:0])

   );

       Project1U2 Project1U2_inst(
       .KEY(KEY[1:0]),
       .SW(SW[9:0]),
       .LEDR(ledU2[9:0]),
       .HEX0(HEX0U2[7:0]),
       .HEX1(HEX1U2[7:0]),
       .HEX2(HEX2U2[7:0]),
       .HEX3(HEX3U2[7:0]),
       .HEX4(HEX4U2[7:0]),
       .HEX5(HEX5U2[7:0])

   );

   always @ (*)begin
       case (SW[9])
           1'b0 : begin
                   LEDR = ledU1;
                   HEX0 = HEX0U1;
                   HEX1 = HEX1U1;
                   HEX2 = HEX2U1;
                   HEX3 = HEX3U1;
                   HEX4 = HEX4U1;
                   HEX5 = HEX5U1;
                   end
            1'b1 : begin
                   LEDR = ledU2;
                   HEX0 = HEX0U2;
                   HEX1 = HEX1U2;
                   HEX2 = HEX2U2;
                   HEX3 = HEX3U2;
                   HEX4 = HEX4U2;
                   HEX5 = HEX5U2;
                   end

       endcase  
   end

   
 
endmodule
