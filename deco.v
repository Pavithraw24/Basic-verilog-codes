module deco(i,y);
    input[1:0]i;
    output reg[3:0]y;
    always @(i)
    begin 
    if(i==2'b00)
      y<=4'b0001;
    else if(i==2'b01)
    y<=4'b0010;
     else if(i==2'b11)
    y<=4'b0100;
     else if(i==2'b01)
    y<=4'b1000;
     else 
    y<=4'bzzzz;
end
endmodule
