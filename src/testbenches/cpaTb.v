`include "cpa.v"

`timescale 1 ns/10 ps

module cpa_tb();
    reg [12:0] a, b;
    wire [12:0] sum;

    localparam T = 20;

    cpa UUT (a, b, sum);

    integer output_file;

    initial begin
        $dumpfile("cpa.vcd");
        $dumpvars(0, cpa_tb);
        output_file = $fopen("CPA.csv");

            
        // test only for 4-bit numbers
        for(a = 0; a < 'b10000; a += 1) begin
            
            for(b = 0; b < 'b10000; b += 1) begin

                #T;
                $fdisplay(output_file, "%b, %b, %b", a, b, sum);

            end                     
        
        end
        
    end 
endmodule