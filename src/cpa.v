`ifndef CPA_V
`define CPA_V

`include "fullAdder.v"

// 13-bit ripple carry adder
module cpa(input [12:0] a, b, output [12:0] s);

    wire [12:0] carry;

    full_adder fa0(a[0], b[0], 1'b0, s[0], carry[0]);

    generate
        genvar i;
        
        for (i = 1; i < 13; i = i +1) begin
            full_adder fa(a[i], b[i], carry[i-1], s[i], carry[i]);
        end
    endgenerate

endmodule

`endif //CPA_V