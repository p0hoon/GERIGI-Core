`define SIMULATION 1
`timescale 1ns/1ps

`timescale 1ns/1ps

module aes_sbox (
    input  wire [7:0] a,
    output reg  [7:0] y
);
    always @(*) begin
        case (a)
            8'h00: y = 8'h63; 8'h01: y = 8'h7c; 8'h02: y = 8'h77; 8'h03: y = 8'h7b;
            8'h04: y = 8'hf2; 8'h05: y = 8'h6b; 8'h06: y = 8'h6f; 8'h07: y = 8'hc5;
            8'h08: y = 8'h30; 8'h09: y = 8'h01; 8'h0a: y = 8'h67; 8'h0b: y = 8'h2b;
            8'h0c: y = 8'hfe; 8'h0d: y = 8'hd7; 8'h0e: y = 8'hab; 8'h0f: y = 8'h76;
            8'h10: y = 8'hca; 8'h11: y = 8'h82; 8'h12: y = 8'hc9; 8'h13: y = 8'h7d;
            8'h14: y = 8'hfa; 8'h15: y = 8'h59; 8'h16: y = 8'h47; 8'h17: y = 8'hf0;
            8'h18: y = 8'had; 8'h19: y = 8'hd4; 8'h1a: y = 8'ha2; 8'h1b: y = 8'haf;
            8'h1c: y = 8'h9c; 8'h1d: y = 8'ha4; 8'h1e: y = 8'h72; 8'h1f: y = 8'hc0;
            8'h20: y = 8'hb7; 8'h21: y = 8'hfd; 8'h22: y = 8'h93; 8'h23: y = 8'h26;
            8'h24: y = 8'h36; 8'h25: y = 8'h3f; 8'h26: y = 8'hf7; 8'h27: y = 8'hcc;
            8'h28: y = 8'h34; 8'h29: y = 8'ha5; 8'h2a: y = 8'he5; 8'h2b: y = 8'hf1;
            8'h2c: y = 8'h71; 8'h2d: y = 8'hd8; 8'h2e: y = 8'h31; 8'h2f: y = 8'h15;
            8'h30: y = 8'h04; 8'h31: y = 8'hc7; 8'h32: y = 8'h23; 8'h33: y = 8'hc3;
            8'h34: y = 8'h18; 8'h35: y = 8'h96; 8'h36: y = 8'h05; 8'h37: y = 8'h9a;
            8'h38: y = 8'h07; 8'h39: y = 8'h12; 8'h3a: y = 8'h80; 8'h3b: y = 8'he2;
            8'h3c: y = 8'heb; 8'h3d: y = 8'h27; 8'h3e: y = 8'hb2; 8'h3f: y = 8'h75;
            8'h40: y = 8'h09; 8'h41: y = 8'h83; 8'h42: y = 8'h2c; 8'h43: y = 8'h1a;
            8'h44: y = 8'h1b; 8'h45: y = 8'h6e; 8'h46: y = 8'h5a; 8'h47: y = 8'ha0;
            8'h48: y = 8'h52; 8'h49: y = 8'h3b; 8'h4a: y = 8'hd6; 8'h4b: y = 8'hb3;
            8'h4c: y = 8'h29; 8'h4d: y = 8'he3; 8'h4e: y = 8'h2f; 8'h4f: y = 8'h84;
            8'h50: y = 8'h53; 8'h51: y = 8'hd1; 8'h52: y = 8'h00; 8'h53: y = 8'hed;
            8'h54: y = 8'h20; 8'h55: y = 8'hfc; 8'h56: y = 8'hb1; 8'h57: y = 8'h5b;
            8'h58: y = 8'h6a; 8'h59: y = 8'hcb; 8'h5a: y = 8'hbe; 8'h5b: y = 8'h39;
            8'h5c: y = 8'h4a; 8'h5d: y = 8'h4c; 8'h5e: y = 8'h58; 8'h5f: y = 8'hcf;
            8'h60: y = 8'hd0; 8'h61: y = 8'hef; 8'h62: y = 8'haa; 8'h63: y = 8'hfb;
            8'h64: y = 8'h43; 8'h65: y = 8'h4d; 8'h66: y = 8'h33; 8'h67: y = 8'h85;
            8'h68: y = 8'h45; 8'h69: y = 8'hf9; 8'h6a: y = 8'h02; 8'h6b: y = 8'h7f;
            8'h6c: y = 8'h50; 8'h6d: y = 8'h3c; 8'h6e: y = 8'h9f; 8'h6f: y = 8'ha8;
            8'h70: y = 8'h51; 8'h71: y = 8'ha3; 8'h72: y = 8'h40; 8'h73: y = 8'h8f;
            8'h74: y = 8'h92; 8'h75: y = 8'h9d; 8'h76: y = 8'h38; 8'h77: y = 8'hf5;
            8'h78: y = 8'hbc; 8'h79: y = 8'hb6; 8'h7a: y = 8'hda; 8'h7b: y = 8'h21;
            8'h7c: y = 8'h10; 8'h7d: y = 8'hff; 8'h7e: y = 8'hf3; 8'h7f: y = 8'hd2;
            8'h80: y = 8'hcd; 8'h81: y = 8'h0c; 8'h82: y = 8'h13; 8'h83: y = 8'hec;
            8'h84: y = 8'h5f; 8'h85: y = 8'h97; 8'h86: y = 8'h44; 8'h87: y = 8'h17;
            8'h88: y = 8'hc4; 8'h89: y = 8'ha7; 8'h8a: y = 8'h7e; 8'h8b: y = 8'h3d;
            8'h8c: y = 8'h64; 8'h8d: y = 8'h5d; 8'h8e: y = 8'h19; 8'h8f: y = 8'h73;
            8'h90: y = 8'h60; 8'h91: y = 8'h81; 8'h92: y = 8'h4f; 8'h93: y = 8'hdc;
            8'h94: y = 8'h22; 8'h95: y = 8'h2a; 8'h96: y = 8'h90; 8'h97: y = 8'h88;
            8'h98: y = 8'h46; 8'h99: y = 8'hee; 8'h9a: y = 8'hb8; 8'h9b: y = 8'h14;
            8'h9c: y = 8'hde; 8'h9d: y = 8'h5e; 8'h9e: y = 8'h0b; 8'h9f: y = 8'hdb;
            8'ha0: y = 8'he0; 8'ha1: y = 8'h32; 8'ha2: y = 8'h3a; 8'ha3: y = 8'h0a;
            8'ha4: y = 8'h49; 8'ha5: y = 8'h06; 8'ha6: y = 8'h24; 8'ha7: y = 8'h5c;
            8'ha8: y = 8'hc2; 8'ha9: y = 8'hd3; 8'haa: y = 8'hac; 8'hab: y = 8'h62;
            8'hac: y = 8'h91; 8'had: y = 8'h95; 8'hae: y = 8'he4; 8'haf: y = 8'h79;
            8'hb0: y = 8'he7; 8'hb1: y = 8'hc8; 8'hb2: y = 8'h37; 8'hb3: y = 8'h6d;
            8'hb4: y = 8'h8d; 8'hb5: y = 8'hd5; 8'hb6: y = 8'h4e; 8'hb7: y = 8'ha9;
            8'hb8: y = 8'h6c; 8'hb9: y = 8'h56; 8'hba: y = 8'hf4; 8'hbb: y = 8'hea;
            8'hbc: y = 8'h65; 8'hbd: y = 8'h7a; 8'hbe: y = 8'hae; 8'hbf: y = 8'h08;
            8'hc0: y = 8'hba; 8'hc1: y = 8'h78; 8'hc2: y = 8'h25; 8'hc3: y = 8'h2e;
            8'hc4: y = 8'h1c; 8'hc5: y = 8'ha6; 8'hc6: y = 8'hb4; 8'hc7: y = 8'hc6;
            8'hc8: y = 8'he8; 8'hc9: y = 8'hdd; 8'hca: y = 8'h74; 8'hcb: y = 8'h1f;
            8'hcc: y = 8'h4b; 8'hcd: y = 8'hbd; 8'hce: y = 8'h8b; 8'hcf: y = 8'h8a;
            8'hd0: y = 8'h70; 8'hd1: y = 8'h3e; 8'hd2: y = 8'hb5; 8'hd3: y = 8'h66;
            8'hd4: y = 8'h48; 8'hd5: y = 8'h03; 8'hd6: y = 8'hf6; 8'hd7: y = 8'h0e;
            8'hd8: y = 8'h61; 8'hd9: y = 8'h35; 8'hda: y = 8'h57; 8'hdb: y = 8'hb9;
            8'hdc: y = 8'h86; 8'hdd: y = 8'hc1; 8'hde: y = 8'h1d; 8'hdf: y = 8'h9e;
            8'he0: y = 8'he1; 8'he1: y = 8'hf8; 8'he2: y = 8'h98; 8'he3: y = 8'h11;
            8'he4: y = 8'h69; 8'he5: y = 8'hd9; 8'he6: y = 8'h8e; 8'he7: y = 8'h94;
            8'he8: y = 8'h9b; 8'he9: y = 8'h1e; 8'hea: y = 8'h87; 8'heb: y = 8'he9;
            8'hec: y = 8'hce; 8'hed: y = 8'h55; 8'hee: y = 8'h28; 8'hef: y = 8'hdf;
            8'hf0: y = 8'h8c; 8'hf1: y = 8'ha1; 8'hf2: y = 8'h89; 8'hf3: y = 8'h0d;
            8'hf4: y = 8'hbf; 8'hf5: y = 8'he6; 8'hf6: y = 8'h42; 8'hf7: y = 8'h68;
            8'hf8: y = 8'h41; 8'hf9: y = 8'h99; 8'hfa: y = 8'h2d; 8'hfb: y = 8'h0f;
            8'hfc: y = 8'hb0; 8'hfd: y = 8'h54; 8'hfe: y = 8'hbb; 8'hff: y = 8'h16;
            default: y = 8'h00;
        endcase
    end
endmodule


// 2. SHA-256 Round Constants (FIPS 180-4)
module sha256_k (
    input  wire [5:0]  t,
    output reg  [31:0] k
);
    always @(*) begin
        case (t)
            6'd0:  k = 32'h428a2f98; 6'd1:  k = 32'h71374491; 6'd2:  k = 32'hb5c0fbcf; 6'd3:  k = 32'he9b5dba5;
            6'd4:  k = 32'h3956c25b; 6'd5:  k = 32'h59f111f1; 6'd6:  k = 32'h923f82a4; 6'd7:  k = 32'hab1c5ed5;
            6'd8:  k = 32'hd807aa98; 6'd9:  k = 32'h12835b01; 6'd10: k = 32'h243185be; 6'd11: k = 32'h550c7dc3;
            6'd12: k = 32'h72be5d74; 6'd13: k = 32'h80deb1fe; 6'd14: k = 32'h9bdc06a7; 6'd15: k = 32'hc19bf174;
            6'd16: k = 32'he49b69c1; 6'd17: k = 32'hefbe4786; 6'd18: k = 32'h0fc19dc6; 6'd19: k = 32'h240ca1cc;
            6'd20: k = 32'h2de92c6f; 6'd21: k = 32'h4a7484aa; 6'd22: k = 32'h5cb0a9dc; 6'd23: k = 32'h76f988da;
            6'd24: k = 32'h983e5152; 6'd25: k = 32'ha831c66d; 6'd26: k = 32'hb00327c8; 6'd27: k = 32'hbf597fc7;
            6'd28: k = 32'hc6e00bf3; 6'd29: k = 32'hd5a79147; 6'd30: k = 32'h06ca6351; 6'd31: k = 32'h14292967;
            6'd32: k = 32'h27b70a85; 6'd33: k = 32'h2e1b2138; 6'd34: k = 32'h4d2c6dfc; 6'd35: k = 32'h53380d13;
            6'd36: k = 32'h650a7354; 6'd37: k = 32'h766a0abb; 6'd38: k = 32'h81c2c92e; 6'd39: k = 32'h92722c85;
            6'd40: k = 32'ha2bfe8a1; 6'd41: k = 32'ha81a664b; 6'd42: k = 32'hc24b8b70; 6'd43: k = 32'hc76c51a3;
            6'd44: k = 32'hd192e819; 6'd45: k = 32'hd6990624; 6'd46: k = 32'hf40e3585; 6'd47: k = 32'h106aa070;
            6'd48: k = 32'h19a4c116; 6'd49: k = 32'h1e376c08; 6'd50: k = 32'h2748774c; 6'd51: k = 32'h34b0bcb5;
            6'd52: k = 32'h391c0cb3; 6'd53: k = 32'h4ed8aa4a; 6'd54: k = 32'h5b9cca4f; 6'd55: k = 32'h682e6ff3;
            6'd56: k = 32'h748f82ee; 6'd57: k = 32'h78a5636f; 6'd58: k = 32'h84c87814; 6'd59: k = 32'h8cc70208;
            6'd60: k = 32'h90befffa; 6'd61: k = 32'ha4506ceb; 6'd62: k = 32'hbef9a3f7; 6'd63: k = 32'hc67178f2;
            default: k = 32'h0;
        endcase
    end
endmodule


// 3. Reset Synchronizer
module reset_sync (
    input  wire clk,
    input  wire arst_n,
    output wire srst_n
);
    reg [1:0] q;
    always @(posedge clk or negedge arst_n) begin
        if (!arst_n) q <= 2'b00;
        else         q <= {q[0], 1'b1};
    end
    assign srst_n = q[1];
endmodule


// 4. Two-Flop Synchronizer
module sync2 (
    input  wire clk,
    input  wire rst_n,
    input  wire d,
    output wire q
);
    reg [1:0] r;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) r <= 2'b00;
        else        r <= {r[0], d};
    end
    assign q = r[1];
endmodule


// 5. Zeroization Core
module zeroization_core #(
    parameter TAMPER_ACTIVE_HIGH = 1
)(
    input  wire clk,
    input  wire rst_n,
    input  wire tamper_pin_in,
    input  wire glitch_det_in,
    output wire zeroize_n,
    output wire tamper_alarm_flag
);
    wire tamper_evt = (TAMPER_ACTIVE_HIGH ? tamper_pin_in : ~tamper_pin_in) | glitch_det_in;

    
    reg tamper_latched;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tamper_latched <= 1'b0;
        end else begin
            if (tamper_evt) begin
                tamper_latched <= 1'b1;
            end
        end
    end

    
    assign zeroize_n = ~(tamper_evt | tamper_latched);
    assign tamper_alarm_flag = tamper_latched | tamper_evt;
endmodule

// 6. Isolated Secure Key Vault
module key_vault (
    input  wire         clk,
    input  wire         clr_n,
    input  wire         load_en,
    input  wire [255:0] key_in,
    output wire [255:0] key_out,
    output reg          key_valid
);
    reg [255:0] key_reg;
    always @(posedge clk or negedge clr_n) begin
        if (!clr_n) begin
            key_reg   <= 256'd0;
            key_valid <= 1'b0;
        end else if (load_en) begin
            key_reg   <= key_in;
            key_valid <= 1'b1;
        end
    end
    assign key_out = key_reg;
endmodule

// 7. Ring Oscillator Cell
module ro_cell #(
    parameter SIM_HALF_PS = 1000
)(
    input  wire en,
    output wire out
);
`ifdef SIMULATION
    reg osc = 1'b1;
    assign out = osc;
    always begin
        if (en === 1'b1) begin
            #(SIM_HALF_PS / 1000.0) osc = ~osc;
        end else begin
            osc = 1'b1;
            @(en);
        end
    end
`else
    (* keep = 1 *) wire n0;
    (* keep = 1 *) wire n1;
    (* keep = 1 *) wire n2;
    assign n0  = ~(en & n2);
    assign n1  = ~n0;
    assign n2  = ~n1;
    assign out = n2;
`endif
endmodule

// 8. RO-PUF Engine
module ro_puf_engine #(
    parameter WINDOW   = 4096,
    parameter REPS     = 3,
    parameter SIM_SEED = 0
)(
    input  wire         clk,
    input  wire         clr_n,
    input  wire         puf_en,
    output reg          puf_busy,
    output reg          puf_done,
    output wire [255:0] puf_response
);
    localparam integer MAJ = REPS / 2 + 1;
    localparam [2:0] S_IDLE   = 3'd0,
                     S_SETUP  = 3'd1,
                     S_REL    = 3'd2,
                     S_RUN    = 3'd3,
                     S_SETTLE = 3'd4,
                     S_CMP    = 3'd5,
                     S_DONE   = 3'd6;

    reg [2:0]   state;
    reg         en_prev, cnt_clr, run_en;
    reg [7:0]   bit_idx;
    reg [3:0]   rep, vote;
    reg [15:0]  win_cnt;
    reg [1:0]   settle;
    reg [255:0] resp;
    assign puf_response = resp;

    wire [4:0] idx_a = bit_idx[4:0];
    wire [4:0] idx_b = idx_a + {2'b00, bit_idx[7:5]} + 5'd1;

    wire [31:0] ro_out, ro_en;
    genvar gi;
    generate
        for (gi = 0; gi < 32; gi = gi + 1) begin : g_ro
            localparam integer P = (gi * (2 * SIM_SEED + 5) + SIM_SEED * 3) % 32;
            assign ro_en[gi] = run_en & ((idx_a == gi) | (idx_b == gi));
            ro_cell #(.SIM_HALF_PS(1000 + 4 * P)) u_ro (.en(ro_en[gi]), .out(ro_out[gi]));
        end
    endgenerate

    wire ro_a = ro_out[idx_a];
    wire ro_b = ro_out[idx_b];
    reg [15:0] cnt_a, cnt_b;
    always @(posedge ro_a or posedge cnt_clr) begin
        if (cnt_clr) cnt_a <= 16'd0; else cnt_a <= cnt_a + 16'd1;
    end
    always @(posedge ro_b or posedge cnt_clr) begin
        if (cnt_clr) cnt_b <= 16'd0; else cnt_b <= cnt_b + 16'd1;
    end
    wire gt = (cnt_a > cnt_b);

    always @(posedge clk or negedge clr_n) begin
        if (!clr_n) begin
            state <= S_IDLE; en_prev <= 1'b0; cnt_clr <= 1'b1; run_en <= 1'b0;
            bit_idx <= 8'd0; rep <= 4'd0; vote <= 4'd0; win_cnt <= 16'd0; settle <= 2'd0;
            resp <= 256'd0; puf_busy <= 1'b0; puf_done <= 1'b0;
        end else begin
            puf_done <= 1'b0;
            en_prev  <= puf_en;
            case (state)
                S_IDLE: begin
                    cnt_clr <= 1'b1; run_en <= 1'b0;
                    if (puf_done) resp <= 256'd0;
                    if (puf_en && !en_prev) begin
                        puf_busy <= 1'b1; bit_idx <= 8'd0; rep <= 4'd0; vote <= 4'd0;
                        state <= S_SETUP;
                    end
                end
                S_SETUP:  begin cnt_clr <= 1'b1; run_en <= 1'b0; state <= S_REL; end
                S_REL:    begin cnt_clr <= 1'b0; win_cnt <= 16'd0; state <= S_RUN; end
                S_RUN: begin
                    run_en <= 1'b1;
                    if (win_cnt == WINDOW - 1) begin
                        run_en <= 1'b0; settle <= 2'd0; state <= S_SETTLE;
                    end else win_cnt <= win_cnt + 16'd1;
                end
                S_SETTLE: begin
                    settle <= settle + 2'd1;
                    if (settle == 2'd2) state <= S_CMP;
                end
                S_CMP: begin
                    if (rep == REPS - 1) begin
                        resp[bit_idx] <= ((vote + {3'b000, gt}) >= MAJ);
                        vote <= 4'd0; rep <= 4'd0;
                        if (bit_idx == 8'd255) state <= S_DONE;
                        else begin bit_idx <= bit_idx + 8'd1; state <= S_SETUP; end
                    end else begin
                        vote <= vote + {3'b000, gt}; rep <= rep + 4'd1; state <= S_SETUP;
                    end
                end
                S_DONE: begin puf_busy <= 1'b0; puf_done <= 1'b1; state <= S_IDLE; end
                default: state <= S_IDLE;
            endcase
        end
    end
endmodule


// 9. Crypto Core Engine
module crypto_core (
    input  wire         clk,
    input  wire         clr_n,
    input  wire         start,
    input  wire         mode,
    input  wire [511:0] msg_block,
    input  wire [255:0] key_data,
    input  wire         key_valid,
    output reg          busy,
    output reg          done,
    output reg          err,
    output reg  [255:0] digest_out
);
    localparam [2:0] S_IDLE = 3'd0, S_SHA = 3'd1, S_SHA_FIN = 3'd2, S_AES = 3'd3;

    localparam [31:0] IV0 = 32'h6a09e667, IV1 = 32'hbb67ae85, IV2 = 32'h3c6ef372, IV3 = 32'ha54ff53a,
                      IV4 = 32'h510e527f, IV5 = 32'h9b05688c, IV6 = 32'h1f83d9ab, IV7 = 32'h5be0cd19;

    function [31:0] rotr(input [31:0] x, input integer n);
        rotr = (x >> n) | (x << (32 - n));
    endfunction
    function [31:0] bsig0(input [31:0] x); bsig0 = rotr(x, 2)  ^ rotr(x, 13) ^ rotr(x, 22); endfunction
    function [31:0] bsig1(input [31:0] x); bsig1 = rotr(x, 6)  ^ rotr(x, 11) ^ rotr(x, 25); endfunction
    function [31:0] ssig0(input [31:0] x); ssig0 = rotr(x, 7)  ^ rotr(x, 18) ^ (x >> 3);    endfunction
    function [31:0] ssig1(input [31:0] x); ssig1 = rotr(x, 17) ^ rotr(x, 19) ^ (x >> 10);   endfunction

    function [7:0] xt(input [7:0] x);
        xt = {x[6:0], 1'b0} ^ (8'h1b & {8{x[7]}});
    endfunction
    function [31:0] mixcol(input [31:0] col);
        reg [7:0] s0, s1, s2, s3;
        begin
            s0 = col[31:24]; s1 = col[23:16]; s2 = col[15:8]; s3 = col[7:0];
            mixcol[31:24] = xt(s0) ^ (xt(s1) ^ s1) ^ s2 ^ s3;
            mixcol[23:16] = s0 ^ xt(s1) ^ (xt(s2) ^ s2) ^ s3;
            mixcol[15:8]  = s0 ^ s1 ^ xt(s2) ^ (xt(s3) ^ s3);
            mixcol[7:0]   = (xt(s0) ^ s0) ^ s1 ^ s2 ^ xt(s3);
        end
    endfunction
    function [7:0] rcon(input [3:0] r);
        case (r)
            4'd1: rcon = 8'h01; 4'd2: rcon = 8'h02; 4'd3: rcon = 8'h04; 4'd4: rcon = 8'h08;
            4'd5: rcon = 8'h10; 4'd6: rcon = 8'h20; 4'd7: rcon = 8'h40; 4'd8: rcon = 8'h80;
            4'd9: rcon = 8'h1b; 4'd10: rcon = 8'h36;
            default: rcon = 8'h00;
        endcase
    endfunction

    reg [2:0]   st;
    reg [6:0]   t;
    reg [31:0]  a, b, c, d, e, f, g, h;
    reg [511:0] win;
    reg [127:0] ast, rk;
    reg [3:0]   rnd;

    wire [31:0] kt;
    sha256_k u_k (.t(t[5:0]), .k(kt));

    wire [31:0] w0    = win[511:480];
    wire [31:0] w1    = win[479:448];
    wire [31:0] w9    = win[223:192];
    wire [31:0] w14   = win[63:32];
    wire [31:0] wnext = ssig1(w14) + w9 + ssig0(w1) + w0;
    wire [31:0] t1    = h + bsig1(e) + ((e & f) ^ (~e & g)) + kt + w0;
    wire [31:0] t2    = bsig0(a) + ((a & b) ^ (a & c) ^ (b & c));

    wire [127:0] sb, sr, mc;
    genvar gi, gr, gc;
    generate
        for (gi = 0; gi < 16; gi = gi + 1) begin : g_sb
            aes_sbox u_s (.a(ast[127 - 8 * gi -: 8]), .y(sb[127 - 8 * gi -: 8]));
        end
        for (gr = 0; gr < 4; gr = gr + 1) begin : g_sr_r
            for (gc = 0; gc < 4; gc = gc + 1) begin : g_sr_c
                localparam integer SRC = gr + 4 * ((gc + gr) % 4);
                localparam integer DST = gr + 4 * gc;
                assign sr[127 - 8 * DST -: 8] = sb[127 - 8 * SRC -: 8];
            end
        end
    endgenerate
    assign mc = {mixcol(sr[127:96]), mixcol(sr[95:64]), mixcol(sr[63:32]), mixcol(sr[31:0])};

    wire [31:0] kw = {rk[23:0], rk[31:24]};
    wire [31:0] ksub;
    aes_sbox u_k0 (.a(kw[31:24]), .y(ksub[31:24]));
    aes_sbox u_k1 (.a(kw[23:16]), .y(ksub[23:16]));
    aes_sbox u_k2 (.a(kw[15:8]),  .y(ksub[15:8]));
    aes_sbox u_k3 (.a(kw[7:0]),   .y(ksub[7:0]));

    wire [31:0]  w0k   = rk[127:96] ^ ksub ^ {rcon(rnd), 24'h000000};
    wire [31:0]  w1k   = rk[95:64]  ^ w0k;
    wire [31:0]  w2k   = rk[63:32]  ^ w1k;
    wire [31:0]  w3k   = rk[31:0]   ^ w2k;
    wire [127:0] rk_n  = {w0k, w1k, w2k, w3k};
    wire [127:0] ast_n = ((rnd == 4'd10) ? sr : mc) ^ rk_n;

    always @(posedge clk or negedge clr_n) begin
        if (!clr_n) begin
            st <= S_IDLE; t <= 7'd0; rnd <= 4'd0;
            a <= 32'd0; b <= 32'd0; c <= 32'd0; d <= 32'd0; e <= 32'd0; f <= 32'd0; g <= 32'd0; h <= 32'd0;
            win <= 512'd0; ast <= 128'd0; rk <= 128'd0;
            busy <= 1'b0; done <= 1'b0; err <= 1'b0; digest_out <= 256'd0;
        end else begin
            done <= 1'b0;
            err  <= 1'b0;
            if (start && st != S_IDLE) err <= 1'b1;
            case (st)
                S_IDLE: if (start) begin
                    if (mode && !key_valid) err <= 1'b1;
                    else begin
                        busy <= 1'b1;
                        if (!mode) begin
                            a <= IV0; b <= IV1; c <= IV2; d <= IV3; e <= IV4; f <= IV5; g <= IV6; h <= IV7;
                            win <= msg_block; t <= 7'd0; st <= S_SHA;
                        end else begin
                            ast <= msg_block[127:0] ^ key_data[255:128];
                            rk  <= key_data[255:128];
                            rnd <= 4'd1; st <= S_AES;
                        end
                    end
                end
                S_SHA: begin
                    h <= g; g <= f; f <= e; e <= d + t1;
                    d <= c; c <= b; b <= a; a <= t1 + t2;
                    win <= {win[479:0], wnext};
                    if (t == 7'd63) st <= S_SHA_FIN; else t <= t + 7'd1;
                end
                S_SHA_FIN: begin
                    digest_out <= {IV0 + a, IV1 + b, IV2 + c, IV3 + d, IV4 + e, IV5 + f, IV6 + g, IV7 + h};
                    a <= 32'd0; b <= 32'd0; c <= 32'd0; d <= 32'd0; e <= 32'd0; f <= 32'd0; g <= 32'd0; h <= 32'd0;
                    win <= 512'd0; busy <= 1'b0; done <= 1'b1; st <= S_IDLE;
                end
                S_AES: begin
                    ast <= ast_n; rk <= rk_n;
                    if (rnd == 4'd10) begin
                        digest_out <= {ast_n, 128'd0};
                        ast <= 128'd0; rk <= 128'd0;
                        busy <= 1'b0; done <= 1'b1; st <= S_IDLE;
                    end else rnd <= rnd + 4'd1;
                end
                default: st <= S_IDLE;
            endcase
        end
    end
endmodule


// 10. Avalon-MM Slave CSR Interface
module csr_avalon_slave (
    input  wire         clk,
    input  wire         rst_n,
    input  wire         csp_clr_n,
    input  wire [1:0]   avs_address,
    input  wire         avs_read,
    input  wire         avs_write,
    input  wire [31:0]  avs_writedata,
    output reg  [31:0]  avs_readdata,
    output wire         avs_waitrequest,

    output reg          start_pulse,
    output reg          core_reset_pulse,
    output reg          puf_regen_pulse,
    output reg          mode,
    output wire [511:0] msg_block,

    input  wire         busy,
    input  wire         op_done,
    input  wire         op_err,
    input  wire         key_ready,
    input  wire         tamper_flag,
    input  wire [255:0] digest_out
);
    assign avs_waitrequest = 1'b0;

    reg [511:0] din_sr;
    assign msg_block = din_sr;
    always @(posedge clk or negedge csp_clr_n) begin
        if (!csp_clr_n)                                din_sr <= 512'd0;
        else if (avs_write && avs_address == 2'd2)  din_sr <= {din_sr[479:0], avs_writedata};
    end

    reg       done_l, err_l;
    reg [2:0] rd_cnt;
    wire cr_write = avs_write && (avs_address == 2'd0);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            start_pulse <= 1'b0; core_reset_pulse <= 1'b0; puf_regen_pulse <= 1'b0; mode <= 1'b0;
            done_l <= 1'b0; err_l <= 1'b0; rd_cnt <= 3'd0;
        end else begin
            start_pulse <= 1'b0; core_reset_pulse <= 1'b0; puf_regen_pulse <= 1'b0;
            if (cr_write) begin
                start_pulse      <= avs_writedata[0];
                core_reset_pulse <= avs_writedata[1];
                puf_regen_pulse  <= avs_writedata[2];
                mode             <= avs_writedata[4];
                if (avs_writedata[0] | avs_writedata[2]) begin
                    done_l <= 1'b0; err_l <= 1'b0; rd_cnt <= 3'd0;
                end
            end
            if (avs_read && avs_address == 2'd3) rd_cnt <= rd_cnt + 3'd1;
            if (op_done) done_l <= 1'b1;
            if (op_err)  err_l  <= 1'b1;
        end
    end

    wire [255:0] dsh  = digest_out >> {(3'd7 - rd_cnt), 5'b00000};
    wire [31:0]  dout = dsh[31:0];

    always @(*) begin
        avs_readdata = 32'd0;
        if (avs_read) begin
            case (avs_address)
                2'd0: avs_readdata = {27'd0, mode, 4'd0};
                2'd1: avs_readdata = {27'd0, err_l, key_ready, tamper_flag, done_l, busy};
                2'd3: avs_readdata = dout;
                default: avs_readdata = 32'd0;
            endcase
        end
    end
endmodule


// 11. Top-Level Entity: GERIGI-Core
module gerigi_core_top #(
    parameter TAMPER_ACTIVE_HIGH = 1,
    parameter PUF_WINDOW         = 4096,
    parameter PUF_REPS           = 3,
    parameter SIM_SEED           = 0
)(
    input  wire        clk,
    input  wire        reset_n,
    input  wire [1:0]  avs_address,
    input  wire        avs_read,
    input  wire        avs_write,
    input  wire [31:0] avs_writedata,
    output wire [31:0] avs_readdata,
    output wire        avs_waitrequest,
    input  wire        tamper_pin_in,
    input  wire        glitch_det_in,
    output wire        tamper_led
);
    wire rst_n_s;
    reset_sync u_rsync (.clk(clk), .arst_n(reset_n), .srst_n(rst_n_s));

    wire zeroize_n, tamper_flag;
    wire start_pulse, core_reset_pulse, puf_regen_pulse, mode;
    wire [511:0] msg_block;
    wire crypto_busy, crypto_done, crypto_err, puf_busy, puf_done, key_valid;
    wire [255:0] digest_out, puf_response, key_vault_out;

    zeroization_core #(.TAMPER_ACTIVE_HIGH(TAMPER_ACTIVE_HIGH)) u_zero (
        .clk(clk),
        .rst_n(rst_n_s),
        .tamper_pin_in(tamper_pin_in),
        .glitch_det_in(glitch_det_in),
        .zeroize_n(zeroize_n),
        .tamper_alarm_flag(tamper_flag)
    );

    wire csp_clr_n = rst_n_s & zeroize_n & ~core_reset_pulse;

    csr_avalon_slave u_csr (
        .clk(clk),
        .rst_n(rst_n_s),
        .csp_clr_n(csp_clr_n),
        .avs_address(avs_address),
        .avs_read(avs_read),
        .avs_write(avs_write),
        .avs_writedata(avs_writedata),
        .avs_readdata(avs_readdata),
        .avs_waitrequest(avs_waitrequest),
        .start_pulse(start_pulse),
        .core_reset_pulse(core_reset_pulse),
        .puf_regen_pulse(puf_regen_pulse),
        .mode(mode),
        .msg_block(msg_block),
        .busy(crypto_busy | puf_busy),
        .op_done(crypto_done | puf_done),
        .op_err(crypto_err),
        .key_ready(key_valid),
        .tamper_flag(tamper_flag),
        .digest_out(digest_out)
    );

    ro_puf_engine #(
        .WINDOW(PUF_WINDOW),
        .REPS(PUF_REPS),
        .SIM_SEED(SIM_SEED)
    ) u_puf (
        .clk(clk),
        .clr_n(csp_clr_n),
        .puf_en(puf_regen_pulse),
        .puf_busy(puf_busy),
        .puf_done(puf_done),
        .puf_response(puf_response)
    );

    key_vault u_vault (
        .clk(clk),
        .clr_n(csp_clr_n),
        .load_en(puf_done),
        .key_in(puf_response),
        .key_out(key_vault_out),
        .key_valid(key_valid)
    );

    crypto_core u_crypto (
        .clk(clk),
        .clr_n(csp_clr_n),
        .start(start_pulse),
        .mode(mode),
        .msg_block(msg_block),
        .key_data(key_vault_out),
        .key_valid(key_valid),
        .busy(crypto_busy),
        .done(crypto_done),
        .err(crypto_err),
        .digest_out(digest_out)
    );

    assign tamper_led = tamper_flag;
endmodule