module demux(i,s,y);
    input i;
    input [1:0]s;
    output reg [3:0]y;
    always @(*)
    begin
        if(s==2'b00)
        begin
            y[0]<=i;y[1]=1'bx;y[2]=1'bx;y[3]=1'bx;
        end
        
        else if(s==2'b01)
        begin
            y[0]<=1'bx;y[1]=i;y[2]=1'bx;y[3]=1'bx;
        end
        
        else if(s==2'b10)
        begin
            y[0]<=1'bx;y[1]=1'bx;y[2]=i;y[3]=1'bx;
        end
        
       else if(s==2'b11)
        begin
            y[0]<=1'bx;y[1]=1'bx;y[2]=1'bx;y[3]=i;
        end
        else
        begin
            y[0]<=1'bx;y[1]=1'bx;y[2]=1'bx;y[3]=1'bx;
        
    end
end
endmodule