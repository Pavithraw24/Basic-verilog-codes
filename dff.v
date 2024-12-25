module dff(din,clk,clear,enable,q);
input din;
input enable,clk,clear;
output reg q;
always @(negedge clk)
if(enable)
begin
if(clear)
q<=0;
else
q<=din;
end 
endmodule
