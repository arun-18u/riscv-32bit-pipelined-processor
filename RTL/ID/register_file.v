module register_file (

    input wire clk,
    input wire we,

    input wire [4:0] rs1,
    input wire [4:0] rs2,
    input wire [4:0] rd,

    input wire [31:0] write_data,

    output wire [31:0] read_data1,
    output wire [31:0] read_data2

);

    // 32 Registers of 32 bits each
    reg [31:0] registers [0:31];

    integer i;

    // Initialize all registers to zero
    initial begin
        for(i = 0; i < 32; i = i + 1)
            registers[i] = 32'b0;
    end

    // Asynchronous Read
    assign read_data1 = (rs1 == 5'd0) ? 32'b0 : registers[rs1];
    assign read_data2 = (rs2 == 5'd0) ? 32'b0 : registers[rs2];

    // Synchronous Write
    always @(posedge clk) begin
        if (we && (rd != 5'd0))
            registers[rd] <= write_data;
    end

endmodule