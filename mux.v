module mux(y,I,s);
input [3:0]I;
input [0:1]s;
output reg y;
always @(s)
begin 
if(s==2'b00)
y<=I[0];
else if (s==2'b01)
y<=I[1];
else if (s==2'b10)
y<=I[2];
else if (s==2'b11)
y<=I[3];
else
y<=4'bzzzz;
end

endmodule