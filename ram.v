// Code your design here
module sync_ram #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8
)(
    input wire clk,
    input wire we,
    input wire [ADDR_WIDTH-1:0] addr,
    input wire [DATA_WIDTH-1:0] din,
    output reg [DATA_WIDTH-1:0] dout
);

    reg [DATA_WIDTH-1:0] mem [0:(1 << ADDR_WIDTH)-1];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        dout <= mem[addr];
    end

endmodule
// Code your testbench here
// or browse Examples
module tb_sync_ram;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    // Instantiate the RAM
    sync_ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Generate clock
    initial clk = 0;
    always #5 clk = ~clk;

    // Test logic
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_sync_ram);

        // Write to RAM
        we = 1; addr = 4'd3; din = 8'h55; #10;

        // Read from same address
        we = 0; addr = 4'd3; #10;

        // One more read (to see stable value)
        #10;

        $finish;
    end

endmodule
