module alu_tb;

reg [7:0] A, B;
reg [2:0] Sel;
wire [7:0] Result;

// Instantiate ALU
alu uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result)
);

initial begin
    $monitor("Time=%0t A=%d B=%d Sel=%b Result=%d", $time, A, B, Sel, Result);
    $dumpfile("dump.vcd");
    $dumpvars;

    // ADD
    A = 8'd5; B = 8'd3; Sel = 3'b000;
    #10;

    // SUB
    A = 8'd6; B = 8'd2; Sel = 3'b001;
    #10;

    // AND
    A = 8'd5; B = 8'd3; Sel = 3'b010;
    #10;

    // OR
    A = 8'd5; B = 8'd3; Sel = 3'b011;
    #10;

    // XOR
    A = 8'd5; B = 8'd3; Sel = 3'b100;
    #10;

    // NOT
    A = 8'd5; Sel = 3'b101;
    #10;

    $finish;
end

endmodule