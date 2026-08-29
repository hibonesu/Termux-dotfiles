ROOT: CLI Text Processing & Data Manipulation
│
├── 🔴 [LEVEL 1] Fundamental Concepts (Pipa & Output)
│   ├── 1.1 StdIn, StdOut, StdErr (Aliran Data)
│   ├── 1.2 Pipe (|) — Menyambungkan Nyawa Command
│   └── 1.3 Redirection (>, >>, <, 2>&1) — Mengalihkan Output
│
├── 🟠 [LEVEL 2] Basic Text Tools (Sensors & Counters)
│   ├── 2.1 cat / bat — Nampilin Isi
│   ├── 2.2 head & tail — Ngintip Atas/Bawah File
│   ├── 2.3 wc (Word Count) — Menghitung Baris, Kata, Byte
│   └── 2.4 sort & uniq — Mengurutkan & Mengeliminasi Duplikat
│
├── 🟡 [LEVEL 3] The Search Executioner (Pencari Pola)
│   ├── 3.1 grep (Global Regular Expression Print)
│   │   ├── Opsi Dasar (-i, -v, -n, -c, -r)
│   │   └── Regex Basic (^, $, [a-z], .*)
│   └── 3.2 ripgrep (rg) — Versi Ultra Cepat Modern (Opsional)
│
├── 🟢 [LEVEL 4] Column & Data Cutters (Pemotong Data)
│   ├── 4.1 cut — Memotong Kolom/Karakter Berdasarkan Delimiter
│   └── 4.2 tr (Translate) — Mengubah/Menghapus Karakter Specifik
│
├── 🔵 [LEVEL 5] The Stream Editor (Pengubah Isi File)
│   ├── 5.1 sed (Stream Editor)
│   │   ├── Substitusi Teks: sed 's/lama/baru/g'
│   │   └── Hapus Baris: sed '/pola/d'
│   └── 5.2 Stream Manipulation Tanpa Buka File
│
└── 🟣 [LEVEL 6] The Final Boss (Pemrogram Data)
    └── 6.1 awk (Aho, Weinberger, and Kernighan)
        ├── Anatomy AWK: pattern { action }
        ├── Field Variable ($0, $1, $2, NF, NR)
        ├── Conditional Logic (if/else di AWK)
        └── Custom Output Formatting (printf)
