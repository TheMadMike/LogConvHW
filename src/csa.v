`ifndef CSA_V
`define CSA_V

// Carry Save Adder implementation
module csa(input [12:0] a, b, c, output [12:0] sum, carry);

    generate
        genvar i;

        for (i=0; i < 13; i = i + 1) begin
            full_adder fa(.s(sum[i]),
                .cout(carry[i]),
                .a(a[i]),
                .b(b[i]),
                .cin(c[i])
            );
        end

    endgenerate

endmodule

`endif //CSA_V