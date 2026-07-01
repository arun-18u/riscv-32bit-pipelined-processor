`timescale 1ns/1ps

module instruction_memory_tb;

    reg [31:0] address;
    wire [31:0] instruction;

    // Instantiate Instruction Memory
    instruction_memory uut (
        .address(address),
        .instruction(instruction)
    );

    initial begin

        // Generate waveform
        $dumpfile("instruction_memory.vcd");
        $dumpvars(0, instruction_memory_tb);

        // Read different instruction addresses
        address = 32'd0;
        #10;

        address = 32'd4;
        #10;

        address = 32'd8;
        #10;

        address = 32'd12;
        #10;

        address = 32'd16;
        #10;

        address = 32'd20;
        #10;

        address = 32'd24;
        #10;

        address = 32'd28;
        #10;

        $finish;

    end

endmodule