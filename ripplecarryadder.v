module ripplecarryadder(a, b, out, cou);
    input [3:0] a, b;         // 4-bit inputs a and b
    output [3:0] out;         // 4-bit output out
    output cou;               // Carry-out signal

    wire w1, w2, w3;          // Internal wires

    fulladder f1(a[0], b[0], 1'b0, out[0], w1);  // Instantiate the fulladder for bit 0
    fulladder f2(a[1], b[1], w1, out[1], w2);    // Instantiate the fulladder for bit 1
    fulladder f3(a[2], b[2], w2, out[2], w3);    // Instantiate the fulladder for bit 2
    fulladder f4(a[3], b[3], w3, out[3], cou);   // Instantiate the fulladder for bit 3
endmodule

