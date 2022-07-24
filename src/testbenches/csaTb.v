`include "csa.v"

`timescale 1 ns/10 ps

module csa_tb();
    reg [12:0] a, b, c;
    wire [12:0] sum, carry;

    localparam T = 20;

    csa UUT (a, b, c, sum, carry);

    integer output_file;

    initial begin
        $dumpfile("csa.vcd");
        $dumpvars(0, csa_tb);
        output_file = $fopen("CSA.csv");

            
        // test only the first 4 bits of the csa
        for(a = 0; a < 'b10000; a += 1) begin
            
            for(b = 0; b < 'b10000; b += 1) begin
                
                for(c = 0; c < 'b10000; c += 1) begin
                    #T;
                    $fdisplay(output_file, "%b, %b, %b, %b, %b", a, b, c, sum, carry);   
                end

            end                     
        
        end
        
    end 
endmodule