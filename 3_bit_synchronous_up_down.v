module synchronous_counter(input mode,clk,output [2:0] q);
    reg [2:0] q =0;
    always @(posedge clk) 
    begin
        if(mode==0)
            q=q+1'b1;
        else
            q=q-1'b1;
    end
endmodule

module synchronous_test;
    reg mode,clk;
    wire [2:0] q;
    synchronous_counter sc(mode,clk,q);    
    initial begin
        $dumpfile("synchro.vcd");
        $dumpvars(1);
        $display("\nSYNCHRONOUS UP-DOWN COUNTER\n\nmode Clk Q2 Q1 Q0");
        $monitor(mode,"    ",clk,"   ",q[2],"  ",q[1],"  ",q[0]);
        mode=0;
        clk=0;
    end    
    always #1 clk=~clk;
    always #15 mode=~mode;
endmodule
