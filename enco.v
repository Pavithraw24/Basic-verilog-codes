module enco(y,i);
input[3:0]i;
output reg[1:0]y;
always @(i)
begin 
  if(i==4'b0001)
    y=2'b00;
 else if(i==4'b0010)
    y=2'b01;
  else if(i==4'b0100)
    y=2'b10;
   else if(i==4'b1000)
    y=2'b11;
   else
     y<=2'bzz;
     y<=2'bzz;
end
endmodule

