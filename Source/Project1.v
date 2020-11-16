module Project1(
       input [1:0] KEY,
       input [9:0] SW,
       output reg [9:0] LEDR,
       output [7:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);
parameter mybday = 24'h061300; // 06/13/2000
parameter jackbday = 24'h121899;
reg [23:0]bday; 
segments U0( .my_in(bday[3:0]), .segs(HEX0[7:0])); 
segments U1( .my_in(bday[7:4]), .segs(HEX1[7:0]));
segments U2( .my_in(bday[11:8]), .segs(HEX2[7:0]));
segments U3( .my_in(bday[15:12]), .segs(HEX3[7:0]));
segments U4( .my_in(bday[19:16]), .segs(HEX4[7:0]));
segments U5( .my_in(bday[23:20]), .segs(HEX5[7:0]));


always @(*) begin
   LEDR[9:8] = 2'b00;
if (KEY[0] == 2'b01)
   begin
       LEDR[7:0] = ~SW[7:0];
   end
else if (KEY[0] == 2'b00)
   begin
       LEDR[7:0] = SW[7:0];
   end

if (KEY[1] == 2'b01)
   begin
      bday[23:0] = mybday;
   end
else if (KEY[1] == 2'b00)
   begin
      bday[23:0] = jackbday;
   end


end
endmodule


