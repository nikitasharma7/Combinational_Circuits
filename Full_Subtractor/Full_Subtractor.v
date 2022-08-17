//Full Subtractor
module full_subtractor(diff,bo,a,b,bi);
input a,b,bi;
output diff, bo;
assign diff = a^b^bi;
assign bo = (~a&bi)|(~a&b)|(b&bi);
endmodule

//Testbench
module tb_full_subtractor;
reg a,b,bi;
wire difference, borrow;
full_subtractor fs(difference,borrow,a,b,bi);
integer i;

initial
begin 
for(i=0;i<8;i=i+1)
begin
{a,b,bi}=i;
#5;
$display("T=%2d, a=%b, b=%b, bi=%b, difference= %b, borrow=%b",$time, a,b,bi,difference,borrow);
end
#5 $finish;
end
endmodule
