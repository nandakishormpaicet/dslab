//F(A, B, C, D) = ∑ (0, 1, 2, 4, 5, 7, 11, 15)

module fun(F,A,B,C,D);
output F;
input A,B,C,D;
wire T1,T2,T3,T4,T5,T6,T7,T8;
not (T1,A),(T2,B),(T3,C),(T4,D);
and(T5,T1,T2,T4),(T6,T1,B,D),(T7,T1,T3),(T8,A,C,D);
or(F,T5,T6,T7,T8);
endmodule

module disp;
reg a,b,c,d;
wire f;
fun fn1(f,a,b,c,d);
initial begin
    $dumpfile("1.vcd");
    $dumpvars(1);
end
initial begin
    $display("");
    $display("a b c d f");
    $monitor(a," ",b," ",c," ",d," ",f);
    a=0;b=0;c=0;d=0;
    #10 d=1;
    #10 c=1;d=0;
    #10 d=1;
    #10 b=1;c=0;d=0;
    #10 d=1;
    #10 c=1;d=0;
    #10 d=1;
    #10 a=1;b=0;c=0;d=0;
    #10 d=1;
    #10 c=1;d=0;
    #10 d=1;
    #10 b=1;c=0;d=0;
    #10 d=1;
    #10 c=1;d=0;
    #10 d=1;
end
endmodule
