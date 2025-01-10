module JKflipflop(q,j,k,clk);
output q;
input j,k,clk;
reg q;
always @(posedge clk)
begin
if (j==0 & k==0)
q<=q;
else if (j==0 & k==1)
q<=1'b0;
else if (j==1 & k==0)
q<=1'b1;
else if (j==1 & k==1)
q<=~q;
end
endmodule
