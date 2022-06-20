`include "fullAdder.v"

module tb;
    reg [3:0] i;
    reg a, b, cin;
    wire s, cout;

    localparam T = 20;

    full_adder UUT (a, b, cin, s, cout);

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
        
        for(i = 0; i < 8; i = i + 1) begin
            a = i[0]; 
            b = i[1];
            cin = i[2];
            #T;
        end
        
    end 

endmodule
