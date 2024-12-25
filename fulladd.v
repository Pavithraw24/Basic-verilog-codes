module fulladd(a,b,c,s,ca);
    input a,b,c;
    output s,ca;
    wire [2:0]w;
    halfadd one(w1,w2,a,b);
    halfadd two(sum,w3,w1,c);
    or(carry,w2,w3);
endmodule
