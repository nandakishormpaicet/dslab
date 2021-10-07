module decade_counter(input clk,output [3:0] q);
    reg [3:0] q =4'b000;
    always @(posedge clk) 
    begin
        if(q<4'b1001)
            q=q+1'b1;
        else
            q=4'b0000;
    end
endmodule

module decade_test;
    reg clk;
    wire [3:0] q;
    decade_counter dc(clk,q);
    
    initial begin
        $dumpfile("decade.vcd");
        $dumpvars(1);
        $display("\nDECADE COUNTER\n\nClk Q3 Q2 Q1 Q0 ");
        $monitor(clk,"   ",q[3],"  ",q[2],"  ",q[1],"  ",q[0]);
        clk=0;
    end    
    always #1 clk=~clk;
endmodule
