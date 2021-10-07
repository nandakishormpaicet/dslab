//F = AC′ + B′D + A′CD + ABCD

module fun(F,A,B,C,D);
input A,B,C,D;
output F;
wire T1,T2,T3,T4,T5,T6,T7;
not(T1,A),(T2,B),(T3,C);
and(T4,A,T3),(T5,T2,D),(T6,T1,C,D),(T7,A,B,C,D);
or(F,T4,T5,T6,T7);
endmodule

module disp;
reg a,b,c,d;
wire f;
fun fn1(f,a,b,c,d);
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
