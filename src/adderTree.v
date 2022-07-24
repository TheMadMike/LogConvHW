`ifndef ADDER_TREE_V
`define ADDER_TREE_V

`include "cpa.v"
`include "csa.v"

/*
    Implementation of the adder tree block (4 operand  13-bit adder)
*/
module adder_tree(input [12:0] a, b, c, d, output [12:0] sum);

    wire [12:0] csa1sum;
    wire [12:0] csa2sum;
    wire [12:0] csa1carry;
    wire [12:0] csa2carry;

    csa csa1(.sum(csa1sum), 
        .carry(csa1carry), 
        .a(a), .b(b), .c(c));

    csa csa2(.sum(csa2sum),
        .carry(csa2carry),
        .a(csa1sum), .b(csa1carry << 1), .c(d));

    cpa cpa1(.s(sum), .a(csa2sum), .b(csa2carry << 1));

endmodule

`endif //ADDER_TREE_V