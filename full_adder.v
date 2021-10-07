module halfadderstr(sum,carry,a,b);
output sum,carry;
input a,b;
xor(sum,a,b);
and(carry,a,b);
endmodule

module fulladder(S,Ca,A,B,C);
input A,B,C;
output S,Ca;
wire sum0,carry0,carry1;
halfadderstr ha1(sum0,carry0,A,B);
halfadderstr ha2(S,carry1,C,sum0);
or(Ca,carry1,carry0);
endmodule

module disp;
reg a,b,c,d;
wire S,Ca;
fulladder fn1(S,Ca,a,b,c);
initial
begin
$display("");
$display("a b c S Ca");
$monitor(a," ",b," ",c," ",S," ",Ca);
a=0;b=0;c=0;
#10 c=1;
#10 b=1;c=0;
#10 c=1;
#10 a=1;b=0;c=0;
#10 c=1;
#10 b=1;c=0;
#10 c=1;
end
endmodule
