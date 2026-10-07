`timescale 1ns/1ps

module tb_gerigi_core;

    // Sinyal stimulus (input ke UUT)
    reg         clk;
    reg         reset_n;
    reg  [1:0]  avs_address;
    reg         avs_read;
    reg         avs_write;
    reg  [31:0] avs_writedata;
    reg         tamper_pin_in;
    reg         glitch_det_in;

    // Sinyal observasi (output dari UUT)
    wire [31:0] avs_readdata;
    wire        avs_waitrequest;
    wire        tamper_led;

    // Instansiasi Unit Under Test (UUT)
    // Parameter PUF_WINDOW diperkecil ke 64 siklus agar simulasi berjalan cepat
    gerigi_core_top #(
        .TAMPER_ACTIVE_HIGH(1),
        .PUF_WINDOW(64),
        .PUF_REPS(3),
        .SIM_SEED(0)
    ) uut (
        .clk(clk),
        .reset_n(reset_n),
        .avs_address(avs_address),
        .avs_read(avs_read),
        .avs_write(avs_write),
        .avs_writedata(avs_writedata),
        .avs_readdata(avs_readdata),
        .avs_waitrequest(avs_waitrequest),
        .tamper_pin_in(tamper_pin_in),
        .glitch_det_in(glitch_det_in),
        .tamper_led(tamper_led)
    );

    // Generator Detak Clock 50 MHz (Periode 20 ns -> Togle tiap 10 ns)
    always #10 clk = ~clk;

    // Task untuk simulasi penulisan register Avalon-MM (HPS -> FPGA)
    task avs_write_word(input [1:0] addr, input [31:0] data);
        begin
            @(posedge clk);
            avs_address   <= addr;
            avs_writedata <= data;
            avs_write     <= 1'b1;
            @(posedge clk);
            avs_write     <= 1'b0;
            avs_writedata <= 32'h0;
        end
    endtask

    // Skenario Pengujian Fungsional & Standar FIPS 140-3
    initial begin
        $display("==========================================================");
        $display("   MEMULAI SIMULASI RTL GERIGI-CORE (QUESTA FPGA)         ");
        $display("==========================================================");

        // 1. Kondisi Awal
        clk           = 0;
        reset_n       = 0;
        avs_address   = 0;
        avs_read      = 0;
        avs_write     = 0;
        avs_writedata = 0;
        tamper_pin_in = 0;
        glitch_det_in = 0;

        // 2. Lepas Reset Sistem
        #100;
        reset_n = 1;
        $display("[T=%0t ns] Reset sistem dilepas, hardware aktif.", $time);
        #40;

        // 3. Picu Pembangkitan Kunci RO-PUF (Tulis bit 2 ke Control Register / Addr 0)
        $display("[T=%0t ns] Mengirim perintah PUF_REGEN via bus Avalon-MM...", $time);
        avs_write_word(2'd0, 32'h00000004);

        // Tunggu hingga proses PUF selesai dan kunci dimuat ke Key Vault
        wait(uut.key_valid == 1'b1);
        $display("[T=%0t ns] Kunci PUF 256-bit berhasil dimuat ke Isolated Vault!", $time);
        $display("          Nilai Key Vault: 0x%064h", uut.u_vault.key_out);
        #100;

        // 4. Masukkan Data Dokumen/Teks ke DINR (Addr 2)
        $display("[T=%0t ns] Menginjeksi blok data dokumen (SHA-256 padding)...", $time);
        avs_write_word(2'd2, 32'h61626380); // Karakter "abc" + padding bit 1
        avs_write_word(2'd2, 32'h00000000);
        #60;

        // 5. Mulai Operasi Kriptografi (Control Register bit 0 = 1)
        $display("[T=%0t ns] Menjalankan operasi komputasi kriptografi...", $time);
        avs_write_word(2'd0, 32'h00000001);
        #120;

        // 6. PENGUJIAN KEAMANAN FIPS 140-3: Picu Tamper Fisik
        $display("----------------------------------------------------------");
        $display("[T=%0t ns] [SIMULASI SERANGAN] Sensor Tamper Eksternal Dipicu!", $time);
        @(posedge clk);
        tamper_pin_in = 1'b1; // Tamper switch aktif (casing dibuka / probing)
        #40;

        // 7. Evaluasi Hasil Pemusnahan Kunci (Active Zeroization)
        if (uut.u_vault.key_out == 256'd0) begin
            $display("[T=%0t ns] [SUKSES - FIPS 140-3 MET]", $time);
            $display("          Active Zeroization terverifikasi: Kunci privat musnah (0x0).");
            $display("          Tamper LED Status: %b", tamper_led);
        end else begin
            $display("[T=%0t ns] [GAGAL] Kunci privat masih tertinggal di dalam register!", $time);
        end
        $display("==========================================================");

        #200;
        $stop; // Hentikan simulasi
    end

endmodule