# GERIGI-Core: Guarded Embedded Root of Trust for Identity, Governance, and Integrity

IP-Core *Hardware Root-of-Trust* (HRoT) mandiri berbasis FPGA yang dirancang untuk platform SoC FPGA Intel Cyclone V SE (Terasic DE10-Nano). GERIGI-Core mengamankan infrastruktur identitas dan dokumen digital nasional melalui pembangkitan kunci berbasis silikon (*Zero-NVM*), isolasi perangkat keras penuh, akselerator kriptografi deterministik, dan pemusnahan kunci instan (*active zeroization*) sesuai standar **NIST FIPS 140-3**.

---

## Fitur Utama

* **Silicon RoT Engine (RO-PUF 256-bit):** Kunci privat diekstrak secara *on-demand* dari variasi fisik mikrofabrikasi silikon tanpa jejak penyimpanan statis pada memori non-volatile (*Zero-NVM Footprint*), memitigasi ekstraksi kunci via *decapping* dan *bus probing*.
* **Isolated Secure Key Vault:** Bank register penyimpan *Critical Security Parameters* (CSP) yang terisolasi total dari bus host (ARM HPS), hanya dapat diakses secara privat oleh mesin kriptografi internal (*no-software-read route*).
* **Deterministic Crypto Accelerator:** Akselerator paralel untuk fungsi hash SHA-256 dan blok sandi simetris dengan latensi siklus clock konstan (*constant-time*) guna menangkal *timing side-channel attacks*.
* **Active Anti-Tamper & Zeroization Core:** Deteksi anomali fisik dan *clock glitch* otonom yang memusnahkan seluruh isi CSP menjadi `0x0` dalam 2 siklus clock (40 ns pada 50 MHz).
* **Avalon-MM Interface with Permission Gating:** Jalur interkoneksi *Lightweight HPS-to-FPGA Bridge* yang membatasi hak akses host hanya pada pengiriman pesan verifikasi dan pembacaan status.

---

## Karakteristik Silikon & Utilisasi Sumber Daya

Hasil sintesis dan analisis pewaktuan (*Static Timing Analysis*) pada perangkat **Intel Cyclone V SE 5CSEBA6U23I7**:

| Parameter Sumber Daya | Penggunaan Modul | Kapasitas Tersedia | Utilisasi |
| :--- | :--- | :--- | :--- |
| **Adaptive Logic Modules (ALMs)** | 2.463 ALMs | 41.910 ALMs | 6% |
| **Dedicated Logic Registers (FF)** | 2.271 | 415.000 | 1,3% |
| **Block RAM (M10K)** | 0 Kbits | 5.570 Kbits | 0% |
| **DSP Blocks** | 0 | 112 | 0% |
| **Maximum Frequency (Fmax)** | **89,00 MHz** | Target: 50,00 MHz | Margin Aman |

---

## Peta Register CSR (Avalon-MM Bus)[cite: 6]

Komunikasi antara Linux pada ARM HPS dan GERIGI-Core dikelola melalui antarmuka *Memory-Mapped I/O* (MMIO) 32-bit:

| Offset Alamat | Register | Fungsi & Deskripsi Bit[cite: 6] |
| :---: | :---: | :--- |
| `0x00` | **CR** (*Control Register*) | **Bit 0:** `Start` (Mulai komputasi)<br>**Bit 1:** `Reset Core` (Reset perangkat keras)<br>**Bit 2:** `PUF Regen` (Ekstraksi ulang entropi RO-PUF)[cite: 6] |
| `0x04` | **SR** (*Status Register*) | **Bit 0:** `Busy` (Sirkuit sedang memproses)<br>**Bit 1:** `Done` (Komputasi tuntas)<br>**Bit 2:** `Tamper Detected` (Status alarm fisik aktif)[cite: 6] |
| `0x08` | **DINR** (*Data Input Register*) | Penyangga FIFO untuk aliran masukan blok pesan dari host[cite: 6]. |
| `0x0C` | **DOUTR** (*Data Output Register*) | Penyangga keluaran *digest* kriptografi atau status hasil verifikasi[cite: 6]. |

> *Catatan Keamanan:* Alamat register untuk membaca kunci privat sengaja tidak disediakan (*no-read route*) guna mencegah kebocoran data akibat serangan perangkat lunak atau eksfiltrasi kernel OS.

---

## Struktur Repositori

```text
├── gerigi_core_top.v      # Kode RTL Verilog modul top-level GERIGI-Core
├── tb_gerigi_core.v       # Testbench simulasi verifikasi fungsi dan zeroization
├── gerigi_core_top.sdc    # Synopsys Design Constraints
├── gerigi_core.qpf        # Berkas proyek Intel Quartus Prime
├── gerigi_core_top.qsf    # Konfigurasi pin assignment dan perangkat FPGA
├── output_files
    └── gerigi_core_top.sof
├── LICENSE                # Berkas lisensi terbuka MIT
└── README.md              # Dokumentasi teknis proyek
