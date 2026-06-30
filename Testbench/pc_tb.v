`timescale 1ns/1ps

module pc_tb;

    reg clk;
    reg reset;
    reg [31:0] pc_next;

    wire [31:0] pc;

    // Instantiate the Program Counter
    pc uut (
        .clk(clk),
        .reset(reset),
        .pc_next(pc_next),
        .pc(pc)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    initial begin

        // Generate VCD waveform file
        $dumpfile("pc.vcd");
        $dumpvars(0, pc_tb);

        // Initial values
        clk = 0;
        reset = 1;
        pc_next = 32'd0;

        // Hold reset for 10 ns
        #10;
        reset = 0;

        // Apply PC values
        #10 pc_next = 32'd4;
        #10 pc_next = 32'd8;
        #10 pc_next = 32'd12;
        #10 pc_next = 32'd16;
        #10 pc_next = 32'd20;

        // Wait before finishing
        #20;

        $finish;
    end

endmodule