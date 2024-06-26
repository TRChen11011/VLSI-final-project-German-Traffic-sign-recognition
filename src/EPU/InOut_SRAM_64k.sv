`ifndef INOUT_SRAM_64k_SV
`define INOUT_SRAM_64k_SV
`include "EPU/SRAM_16b_32768w_64k.sv"
`include "Interface/sp_ram_intf.sv"

// Combine six 64kB SRAM into 384kB SRAM

module InOut_SRAM_64k (
    input logic              rst,
    input logic              clk,
          sp_ram_intf.memory mem
);

  logic        CS;
  logic        OE;
  logic        WEB;
  logic [17:0] A;
  logic [15:0] DI;
  logic [15:0] DO;

  logic [17:0] latched_A;
  logic [15:0] _DO       [0:5];

  assign CS = mem.cs;
  assign OE = mem.oe;
  assign A = mem.addr[17:0];
  assign DI = mem.W_data[15:0];
  assign WEB = mem.W_req;
  assign mem.R_data = {{16{DO[15]}}, DO};

  always_ff @(posedge clk, posedge rst) begin
    if (rst) latched_A <= 0;
    else latched_A <= A;
  end

  always_comb begin
    DO = 16'b0;
    case (latched_A[17:15])
      3'h0: DO = _DO[0];
      3'h1: DO = 16'b0;
      3'h2: DO = 16'b0;
      3'h3: DO = 16'b0;
      3'h4: DO = 16'b0;
      3'h5: DO = 16'b0;
      3'h6: DO = 16'b0;
      3'h7: DO = 16'b0;
    endcase
  end

  genvar g;
  generate
    for (g = 0; g < 1; g = g + 1) begin : SRAM_blk
      logic _CS;
      logic _OE;
      logic _WEB;

      assign _CS  = A[17:15] == g[2:0] ? CS : 1'b0;
      assign _OE  = latched_A[17:15] == g[2:0] ? OE : 1'b0;
      assign _WEB = A[17:15] == g[2:0] ? WEB : 1'b1;

      SRAM_16b_32768w_64k i_SRAM_16b_32768w_64k (
          .CK (clk),
          .CS (_CS),
          .OE (_OE),
          .WEB(_WEB),
          .A  (A[14:0]),
          .DI (DI),
          .DO (_DO[g])
      );
    end : SRAM_blk
  endgenerate

endmodule

`endif
