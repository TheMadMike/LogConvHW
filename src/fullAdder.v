`ifndef FULL_ADDER_V
`define FULL_ADDER_V

module full_adder(input a, b, cin, output s, cout);
    
    wire w1, w2, w3;

    xor x1(w1, a, b);
    xor x2(s, w1, cin);

    nand na1(w2, a, b);
    nand na2(w3, w1, cin);
    nand na3(cout, w2, w3);

endmodule

`endif //FULL_ADDER_V
