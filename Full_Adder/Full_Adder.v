// Full Adder
module full_adder(s,co,a,b,c);
input a,b,c;
output s,co;
assign s= a^b^c;
assign co= (a&b)|(b&c)|(a&c);
endmodule

//Testbench
module tb;
reg a,b,c;
wire sum,cout;
full_adder fa(sum,cout,a,b,c);
integer i;

initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,c} = i; 
#5;
$display("T=%2d, a=%b, b=%b, c=%b, sum=%b, cout=%b", $time, a,b,c,sum,cout);
end
#5 $finish;
end
endmodule
