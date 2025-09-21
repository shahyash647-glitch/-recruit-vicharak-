module ProgramCounter (
    input clk, reset,
    input Jump, Branch, Call, Ret,
    input [15:0] target_addr,    // Jump/Branch target
    input [15:0] ret_addr,       // Returned from stack
    output reg [15:0] pc_out
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc_out <= 16'b0;               // Reset to 0
        else if (Jump)
            pc_out <= target_addr;         // Jump
        else if (Branch)
            pc_out <= target_addr;         // Branch
        else if (Ret)
            pc_out <= ret_addr;            // Return from stack
        else
            pc_out <= pc_out + 1;          // Normal increment
    end
endmodule
