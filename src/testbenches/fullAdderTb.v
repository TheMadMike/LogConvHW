`include "fullAdder.v"

`timescale 1 ns/10 ps

module full_adder_tb();
    reg [3:0] i;
    reg a, b, cin;
    wire s, cout;

    localparam T = 20;

    full_adder UUT (a, b, cin, s, cout);

    integer output_file;


    initial begin
        $dumpfile("fullAdder.vcd");
        $dumpvars(0, full_adder_tb);
        output_file = $fopen("FA.csv");

        for(i = 0; i < 8; i = i + 1) begin
            a = i[0]; 
            b = i[1];
            cin = i[2];
            #T;

            $fdisplay(output_file, "%b, %b%b", i, s, cout);
        end
        
    end 
endmodule