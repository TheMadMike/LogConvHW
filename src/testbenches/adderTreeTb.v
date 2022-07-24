`include "adderTree.v"

`timescale 1 ns/10 ps

module adder_tree_tb();
    reg [12:0] a, b, c, d;
    wire [12:0] sum;

    localparam T = 20;

    adder_tree UUT (a, b, c, d, sum);

    integer output_file;

    initial begin
        $dumpfile("atree.vcd");
        $dumpvars(0, adder_tree_tb);
        output_file = $fopen("ATREE.csv");

            
        // test only for 2-bit numbers
        for(a = 0; a < 'b100; a += 1) begin
            
            for(b = 0; b < 'b100; b += 1) begin
                
                for(c = 0; c < 'b100; c += 1) begin

                    for(d = 0; d < 'b100; d += 1) begin
                        #T;
                        $fdisplay(output_file, "%b, %b, %b, %b, %b", a, b, c, d, sum);
                    end

                end

            end                     
        
        end
        
    end 
endmodule