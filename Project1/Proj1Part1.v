module Design1(
        input [1:0] KEY,
        input [7:0] SW,
        output [7:0] LEDR,
);

always @(*) begin

if (KEY[0] == 2'b01)
    begin
        assign LEDR[0] = ~SW[0];
        assign LEDR[1] = ~SW[1];
        assign LEDR[2] = ~SW[2];
        assign LEDR[3] = ~SW[3];
        assign LEDR[4] = ~SW[4];
        assign LEDR[5] = ~SW[5];
        assign LEDR[6] = ~SW[6];
        assign LEDR[7] = ~SW[7];
    end
else begin
         assign LEDR[0] = SW[0];
         assign LEDR[1] = SW[1];
         assign LEDR[2] = SW[2];
         assign LEDR[3] = SW[3];
         assign LEDR[4] = SW[4];
         assign LEDR[5] = SW[5];
         assign LEDR[6] = SW[6];
         assign LEDR[7] = SW[7];
end
end
endmodule