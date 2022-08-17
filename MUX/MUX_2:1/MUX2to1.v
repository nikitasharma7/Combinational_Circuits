//2:1 MUX
module Mux2to1(x,y,sel,z);
input x,y,sel;
output reg z;
always @(*)
if(sel==1)
begin
z=y;
end
else
begin
z=x;
end
endmodule

//Testbench
module tb_mux2to1;
reg x,y,sel;
wire z;
Mux2to1 M2to1 (x,y,sel,z);

initial 
begin
$monitor("T=%2d, x=%b,y=%b,sel=%b, z=%b",$time, x,y,sel,z);
#5 sel=0; x=0; y=1;
#5 sel=1; x=0; y=1;
end
endmodule
