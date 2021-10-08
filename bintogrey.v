Verilog Code for Binary to Gray code conversion:

module bin2gray
        (input [3:0] bin, //binary input
         output [3:0] G //gray code output
        );

//xor gates.
assign G[3] = bin[3];
assign G[2] = bin[3] ^ bin[2];
assign G[1] = bin[2] ^ bin[1];
assign G[0] = bin[1] ^ bin[0];

endmodule

Verilog Code for Gray code to Binary conversion:

module gray2bin
        (input [3:0] G, //gray code output
         output [3:0] bin   //binary input
        );

assign bin[3] = G[3];
assign bin[2] = G[3] ^ G[2];
assign bin[1] = G[3] ^ G[2] ^ G[1];
assign bin[0] = G[3] ^ G[2] ^ G[1] ^ G[0];

endmodule
