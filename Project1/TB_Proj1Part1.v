module TB_Proj1Part1(input [1:0]KEY, input [7:0]SW, output [7:0]LEDR);
    Proj1Part1 Proj1Part1_inst(
        .KEY(KEY[1:0]),
        .SW(SW[7:0]),
        .LEDR(LEDR[7:0]),
    );

endmodule