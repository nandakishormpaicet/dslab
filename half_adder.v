//structural
module halfadderstr(sum,carry,a,b);
output sum,carry;
input a,b;
xor(sum,a,b);
and(carry,a,b);
endmodule

module disp;
reg a,b;
wire sum,carry;
halfadderstr hastr(sum,carry,a,b);
initial begin
    $display("HALF ADDER USING STRUCTURAL");
    $display("a b sum carry");
    $monitor(a," ",b,"  ",sum,"  ",carry);
    a=0;b=0;
    #10 b=1;
    #10 a=1;b=0;
    #10 b=1;
end
endmodule

//dataflow

module halfadderdf(sum,carry,a,b);
output sum,carry;
input a,b;
assign sum = a^b;
assign carry = a&b;
endmodule

module disp;
reg a,b;
wire sum,carry;
halfadderdf hadf(sum,carry,a,b);
initial begin
    $display("HALF ADDER USING DATAFLOW");
    $display("a b sum carry");
    $monitor(a," ",b,"  ",sum,"  ",carry);
    a=0;b=0;
    #10 b=1;
    #10 a=1;b=0;
    #10 b=1;
end

endmodule

//behavioral
module halfadderbeh(sum,carry,a,b);
output sum,carry;
input a,b;
reg sum,carry;
always @(a,b)
begin
sum = a^b;
carry = a&b;
end
endmodule

module disp;
reg a,b;
wire sum,carry;
halfadderbeh habeh(sum,carry,a,b);
initial begin
    $display("HALF ADDER USING BEHAVIOURAL");
    $display("a b sum carry");
    $monitor(a," ",b,"  ",sum,"  ",carry);
    a=0;b=0;
    #10 b=1;
    #10 a=1;b=0;
    #10 b=1;
end
endmodule

