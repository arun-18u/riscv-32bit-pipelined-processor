module instruction_memory (

    input  wire [31:0] address,
    output wire [31:0] instruction

);

    // 64 x 32-bit Instruction Memory
    reg [31:0] memory [0:63];

    // Load instructions from external memory file
   /*
    initial begin
        $readmemh("Memory/program.mem", memory);
    end
    */

    // Read instruction using word-aligned address
    assign instruction = memory[address[31:2]];

endmodule