#import "/laprak/_template/main.typ": lab_report, praktikum, tugas, tujuan, indent

#show: doc => lab_report(
  title: "LAPORAN PRAKTIKUM",
  course: "PEMROGRAMAN BERBASIS OBJEK",
  subtitle: "JOBSHEET 04 - RELASI KELAS (AGGREGATION, COMPOSITION, DAN DEPENDENCY)",
  name: "Mohammad Hafidz Rafi' Rabbani",
  nim: "254107020084",
  class: "2H",
  absent: "14",
  footer_text: "Pemrograman Berbasis Objek - Jobsheet 04",
  study_program: "PROGRAM STUDI TEKNIK INFORMATIKA",
  department: "JURUSAN TEKNOLOGI INFORMASI",
  institution: "POLITEKNIK NEGERI MALANG",
  year: "2026",
  doc,
)

#tujuan(data: (
  "Menjelaskan perbedaan konsep relasi Association, Aggregation, Composition, dan Dependency (uses-a).",
  "Mengimplementasikan relasi Aggregation antar-kelas untuk kasus satu-ke-satu, relasi ganda, dan relasi multi-role.",
  "Mengimplementasikan relasi Composition tunggal dan multi-objek (array of objects) serta memahami aturan lifecycle dan pembatasan setter.",
  "Mengimplementasikan relasi Dependency (uses-a) di mana objek hanya digunakan temporer lewat parameter method tanpa disimpan sebagai atribut.",
  "Menerapkan guard clause untuk mendeteksi dan mencegah NullPointerException pada referensi objek yang belum diinisialisasi.",
  "Merancang dan membangun studi kasus mandiri yang mengintegrasikan relasi Aggregation, Composition, dan Dependency dalam satu sistem berorientasi objek.",
))

#praktikum(data: (
  (
    subbab: "Percobaan 1: Aggregation Satu-ke-Satu (Laptop dan Processor)",
    deskripsi: [
      Pada percobaan pertama, dipelajari relasi kepemilikan independen (*has-a*) antara class `Laptop` (Whole) dan class `Processor` (Part). Objek `Processor` diinstansiasi secara mandiri di luar class `Laptop` lalu disuntikkan (*injected*) melalui constructor berparameter atau method setter `setProc()`. Class `Laptop` mendelegasikan pencetakan informasi prosesor melalui pemanggilan method `proc.info()`.

      ```java
      // Laptop.java
      public class Laptop {
          private String merk;
          private Processor proc;

          public Laptop(String merk, Processor proc) {
              this.merk = merk;
              this.proc = proc;
          }

          public void setProc(Processor proc) {
              this.proc = proc;
          }

          public void info() {
              System.out.println("Merk Laptop = " + merk);
              proc.info();
          }
      }
      ```

      #align(center)[
        #image("../screenshots/ss01_percobaan1_laptop_processor.png", width: 85%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Di dalam class Processor dan class Laptop, terdapat method setter dan getter untuk masing-masing atributnya. Apakah gunanya method setter dan getter tersebut?],
        [Method getter digunakan untuk membaca atau mengambil nilai atribut `private` dari luar kelas (*read-only access*), sedangkan method setter digunakan untuk mengisi, memvalidasi, atau mengubah nilai atribut tersebut secara terkontrol (*write access*) sesuai prinsip enkapsulasi data.],
      ),
      (
        [Di dalam class Processor dan class Laptop, masing-masing terdapat konstruktor default dan konstruktor berparameter. Bagaimanakah beda penggunaan dari kedua jenis konstruktor tersebut?],
        [Konstruktor default digunakan saat ingin membuat objek kosong tanpa memberikan nilai awal langsung pada atributnya (atribut akan bernilai default Java sebelum diatur lewat setter). Sedangkan konstruktor berparameter digunakan untuk langsung memberikan nilai inisialisasi awal pada atribut objek melalui argumen parameter saat objek pertama kali di-instansiasi menggunakan `new`.],
      ),
      (
        [Perhatikan class Laptop, di antara 2 atribut yang dimiliki (merk dan proc), atribut manakah yang bertipe object? Baris kode manakah yang menunjukkan bahwa class Laptop memiliki relasi dengan class Processor?],
        [Atribut yang bertipe object adalah `proc` (bertipe kelas `Processor`). Baris kode yang menunjukkan relasi adalah deklarasi `private Processor proc;` serta parameter constructor `public Laptop(String merk, Processor proc) { this.proc = proc; }` dan setter `public void setProc(Processor proc) { this.proc = proc; }`.],
      ),
      (
        [Perhatikan pada class Laptop, apakah guna dari sintaks proc.info()?],
        [Guna sintaks tersebut adalah memanggil method `info()` milik objek `Processor` yang tersimpan pada atribut `proc`. Ini merupakan penerapan pola delegasi: class `Laptop` tidak perlu mencetak rincian teknis prosesor secara manual, melainkan menyuruh objek `Processor` untuk mencetak spesifikasi dirinya sendiri.],
      ),
      (
        [Pada Langkah 8, objek p dibuat lebih dulu baru diberikan ke constructor Laptop. Pada Langkah 10, objek Processor dibuat langsung di dalam argumen constructor Laptop (tanpa variabel p). Apakah keduanya menghasilkan output yang berbeda? Mengapa?],
        [Output yang dihasilkan sama persis. Secara teknis di memori Java (*heap memory*), kedua cara tersebut sama-sama mengalokasikan satu objek `Processor` baru dan mengirimkan alamat referensinya ke constructor `Laptop`. Bedanya, pada Langkah 8 alamat referensi sempat ditampung terlebih dahulu di variabel lokal `p` (`Processor p = new Processor(...)`), sedangkan pada Langkah 10 objek dibuat langsung sebagai *anonymous object* di dalam argumen constructor.],
      ),
      (
        [Secara kode, apakah relasi Laptop-Processor pada percobaan ini termasuk Aggregation atau Composition? Tunjukkan baris kode yang menjadi bukti jawabanmu.],
        [Termasuk *Aggregation*. Buktinya objek `Processor` dibuat di luar kelas `Laptop` (di `MainPercobaan1`), lalu disuntikkan via constructor atau setter (`public Laptop(String merk, Processor proc)` dan `public void setProc(Processor proc)`). Objek `Processor` memiliki *lifecycle* mandiri dan tidak akan musnah di heap memory jika objek `Laptop` dihapus.],
      ),
      (
        [Andaikan constructor Laptop diubah sehingga Processor dibuat sendiri di dalam Laptop (this.proc = new Processor("Generic", 1)), apakah relasi ini masih Aggregation? Jelaskan alasannya.],
        [Tidak, relasi tersebut berubah menjadi *Composition*. Hal ini karena objek `Processor` diinstansiasi secara internal menggunakan `new` di dalam constructor `Laptop`, sehingga siklus hidup `Processor` terikat mutlak (*tight coupling*) dengan `Laptop`. Objek `Processor` tidak bisa disuntikkan dari luar dan otomatis musnah jika objek `Laptop` dihapus.],
      ),
    ),
  ),
  (
    subbab: "Percobaan 2: Aggregation Ganda (Pelanggan, Mobil, dan Sopir)",
    deskripsi: [
      Percobaan kedua menguji skenario di mana satu class Whole (`Pelanggan`) memiliki relasi Aggregation dengan dua class Part yang berbeda (`Mobil` dan `Sopir`). Durasi sewa (`hari`) yang merupakan atribut milik `Pelanggan` dilewatkan sebagai argumen parameter ke method `hitungBiayaMobil(hari)` dan `hitungBiayaSopir(hari)`. Hasil perhitungan kedua objek tersebut kemudian dijumlahkan di method `hitungBiayaTotal()`.

      ```java
      // Pelanggan.java
      public int hitungBiayaTotal() {
          return mobil.hitungBiayaMobil(hari) + sopir.hitungBiayaSopir(hari);
      }
      ```

      #align(center)[
        #image("../screenshots/ss02_percobaan2_pelanggan_mobil_sopir.png", width: 85%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Perhatikan class Pelanggan. Pada baris program manakah yang menunjukkan bahwa class Pelanggan memiliki relasi dengan class Mobil dan class Sopir?],
        [Ditunjukkan pada deklarasi atribut `private Mobil mobil;` dan `private Sopir sopir;`, serta method setter dan getter terkait (`setMobil`, `setSopir`, `getMobil`, `getSopir`).],
      ),
      (
        [Perhatikan method hitungBiayaSopir pada class Sopir, serta method hitungBiayaMobil pada class Mobil. Mengapa method tersebut harus memiliki argument hari, padahal hari sendiri adalah atribut milik Pelanggan?],
        [Karena tarif sewa mobil dan tarif jasa sopir dihitung berdasarkan durasi harian, tetapi data durasi sewa (`hari`) adalah atribut konteks transaksi yang dimiliki oleh `Pelanggan`. Agar class `Mobil` dan `Sopir` tetap modular dan tidak perlu menyimpan data transaksi secara permanen, nilai `hari` dilewatkan sebagai parameter saat kalkulasi biaya dijalankan.],
      ),
      (
        [Perhatikan kode dari class Pelanggan. Untuk apakah perintah mobil.hitungBiayaMobil(hari) dan sopir.hitungBiayaSopir(hari)?],
        [Perintah tersebut digunakan untuk memanggil method kalkulasi biaya dari masing-masing objek Part (`Mobil` dan `Sopir`) dengan mengoper durasi sewa, di mana return value-nya akan dijumlahkan pada method `hitungBiayaTotal()` milik `Pelanggan`.],
      ),
      (
        [Perhatikan class MainPercobaan2. Untuk apakah sintaks p.setMobil(m) dan p.setSopir(s)?],
        [Untuk menyuntikkan (*inject*) alamat referensi objek `m` (dari class `Mobil`) dan objek `s` (dari class `Sopir`) yang telah dibuat sebelumnya ke dalam atribut `mobil` dan `sopir` pada objek pelanggan `p`.],
      ),
      (
        [Untuk apakah proses p.hitungBiayaTotal()?],
        [Untuk menghitung total biaya transaksi sewa pelanggan dengan menjumlahkan return value dari biaya sewa mobil dan biaya jasa sopir sesuai durasi hari.],
      ),
      (
        [Pada Langkah 7, p.getMobil().getMerk() memanggil dua method sekaligus secara berantai. Jelaskan urutan eksekusinya!],
        [Eksekusi berjalan berantai dari kiri ke kanan: method `p.getMobil()` dieksekusi lebih dulu untuk mengembalikan referensi objek `Mobil`, kemudian method `.getMerk()` dipanggil langsung pada objek `Mobil` tersebut untuk menghasilkan string merk mobil.],
      ),
      (
        [Andaikan p.setMobil(m) tidak pernah dipanggil lalu p.hitungBiayaTotal() dijalankan, error apa yang akan muncul? Jelaskan alasannya!],
        [Akan muncul runtime error `java.lang.NullPointerException` (`Cannot invoke "...hitungBiayaMobil(int)" because "this.mobil" is null`). Error terjadi karena atribut `this.mobil` masih bernilai default `null` (tidak menunjuk ke objek mana pun di heap memory), sehingga pemanggilan method pada referensi kosong tersebut ditolak oleh JVM.],
      ),
    ),
  ),
  (
    subbab: "Percobaan 3: Aggregation Multi-Role dan Penanganan NullPointerException (Kereta Api dan Pegawai)",
    deskripsi: [
      Percobaan ketiga mengimplementasikan relasi di mana satu class Part (`Pegawai`) digunakan untuk mengisi dua atribut peran berbeda (`masinis` dan `asisten`) pada class `KeretaApi`. Pada saat objek `KeretaApi` diinisialisasi menggunakan constructor 3-parameter tanpa menyertakan asisten, pemanggilan `this.asisten.info()` menghasilkan `NullPointerException`. Masalah ini diatasi menggunakan *guard clause* (`if (this.asisten != null)`).

      ```java
      // KeretaApi.java (setelah perbaikan guard clause)
      public String info() {
          String info = "";
          info += "Nama: " + this.nama + "\n";
          info += "Kelas: " + this.kelas + "\n";
          info += "Masinis: " + this.masinis.info() + "\n";
          if (this.asisten != null) {
              info += "Asisten: " + this.asisten.info() + "\n";
          }
          return info;
      }
      ```

      #align(center)[
        #image("../screenshots/ss03_percobaan3_keretaapi_pegawai.png", width: 85%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Di dalam method info() pada class KeretaApi, baris this.masinis.info() dan this.asisten.info() digunakan untuk apa?],
        [Digunakan untuk mendelegasikan pencetakan informasi data pegawai ke masing-masing objek `Pegawai` yang bertugas sebagai masinis dan asisten masinis.],
      ),
      (
        [Apa hasil output dari MainPertanyaan sebelum diperbaiki (Langkah 8)? Mengapa hal tersebut dapat terjadi?],
        [Program berhenti mendadak dengan runtime error `NullPointerException`. Hal ini terjadi karena objek `KeretaApi` dibuat lewat constructor 3-parameter yang tidak mengisi atribut `asisten`, sehingga `this.asisten` bernilai `null` saat method `.info()` dipanggil.],
      ),
      (
        [Kaitkan dengan materi referensi objek: apa isi variabel asisten di dalam objek KeretaApi yang dibuat lewat constructor 3-parameter, sebelum guard clause ditambahkan?],
        [Variabel `asisten` berisi nilai literal `null` (default value tipe referensi di Java). Artinya, variabel referensi tersebut sudah dialokasikan di dalam objek `KeretaApi`, namun belum menunjuk/merujuk ke alamat instance objek `Pegawai` mana pun di heap memory.],
      ),
      (
        [Setelah guard clause ditambahkan (Langkah 9), apakah objek masinis juga perlu dicek dengan cara yang sama? Perhatikan kedua constructor KeretaApi!],
        [Berdasarkan kedua constructor `KeretaApi` (baik versi 3-parameter maupun 4-parameter), parameter `masinis` selalu diwajibkan sehingga secara logika alur program normalnya `masinis` tidak akan `null`. Namun, secara *defensive programming*, pengecekan `if (this.masinis != null)` tetap dianjurkan untuk mencegah crash jika pemanggil sengaja mengoper nilai `null`.],
      ),
      (
        [Kelas Pegawai dipakai lewat dua atribut berbeda (masinis dan asisten) pada KeretaApi. Apakah ini membuat KeretaApi punya dua objek Pegawai yang berbeda, atau satu objek yang dipakai dua kali?],
        [Memiliki *dua objek `Pegawai` yang berbeda*. Pada method main, operator `new Pegawai(...)` dipanggil dua kali secara terpisah (`masinis = new Pegawai(...)` dan `asisten = new Pegawai(...)`), menghasilkan dua instance fisik objek independen di heap memory dengan NIP dan Nama masing-masing.],
      ),
    ),
  ),
  (
    subbab: "Percobaan 4: Composition Array of Object dan Multiplicity (Gerbong, Kursi, Penumpang)",
    deskripsi: [
      Percobaan keempat menggabungkan dua jenis relasi: relasi *Composition* antara `Gerbong` dan array `Kursi`, serta relasi *Aggregation* antara `Kursi` dan `Penumpang`. Seluruh objek `Kursi` diciptakan secara internal dan eksklusif di dalam method private `initKursi()` pada class `Gerbong`. Ditambahkan pula validasi agar kursi yang sudah terisi tidak dapat ditimpa oleh penumpang lain.

      ```java
      // Gerbong.java
      private void initKursi() {
          for (int i = 0; i < arrayKursi.length; i++) {
              this.arrayKursi[i] = new Kursi(String.valueOf(i + 1));
          }
      }

      public void setPenumpang(Penumpang penumpang, int nomor) {
          if (this.arrayKursi[nomor - 1].getPenumpang() == null) {
              this.arrayKursi[nomor - 1].setPenumpang(penumpang);
          } else {
              System.out.println("Kursi nomor " + nomor + " sudah ditempati oleh " 
                  + this.arrayKursi[nomor - 1].getPenumpang().getNama() + "!");
          }
      }
      ```

      #align(center)[
        #image("../screenshots/ss04_percobaan4_gerbong_kursi_penumpang.png", width: 85%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Pada main program dalam class MainPercobaan4, berapakah jumlah kursi dalam Gerbong A?],
        [Terdapat *10 kursi* (sesuai argumen inisialisasi `new Gerbong("A", 10)`), di mana pada saat pengujian baru 1 kursi yang terisi oleh penumpang.],
      ),
      (
        [Perhatikan potongan kode if (this.penumpang != null) pada method info() dalam class Kursi. Apa maksud kode tersebut?],
        [Potongan kode tersebut merupakan *guard clause* untuk memeriksa keterisian kursi. Jika kursi terisi (`penumpang != null`), method akan memanggil `penumpang.info()`. Jika kosong, proses pemanggilan diabaikan agar tidak menimbulkan `NullPointerException`.],
      ),
      (
        [Mengapa pada method setPenumpang() dalam class Gerbong, nilai nomor dikurangi dengan angka 1?],
        [Karena penomoran kursi di dunia nyata berbasis 1 (*1-indexed*, kursi nomor 1 sampai 10), sedangkan indeks array pada bahasa Java berbasis 0 (*0-indexed*, indeks 0 sampai 9). Pengurangan `nomor - 1` diperlukan untuk memetakan nomor kursi ke indeks elemen array yang sesuai.],
      ),
      (
        [Instansiasi objek baru budi dengan tipe Penumpang, kemudian masukkan pada gerbong menimpa Mr. Krab (gerbong.setPenumpang(budi, 1)). Apakah yang terjadi? Apakah Java memberi error?],
        [Pada kode asli sebelum validasi ditambahkan, Java *tidak memberi error ataupun peringatan*. Referensi objek penumpang lama (Mr. Krab) pada elemen kursi ke-1 langsung ditimpa (*overwritten*) dengan referensi objek `budi`.],
      ),
      (
        [Tuliskan potongan kode modifikasi sehingga tidak diperkenankan menduduki kursi yang sudah ada penumpang lain!],
        [Modifikasi validasi pada method `Gerbong.setPenumpang()`:
        ```java
        public void setPenumpang(Penumpang penumpang, int nomor) {
            if (this.arrayKursi[nomor - 1].getPenumpang() == null) {
                this.arrayKursi[nomor - 1].setPenumpang(penumpang);
            } else {
                System.out.println("Peringatan: Kursi nomor " + nomor + " sudah ditempati oleh " 
                    + this.arrayKursi[nomor - 1].getPenumpang().getNama() + "!");
            }
        }
        ```],
      ),
      (
        [Untuk kasus seperti apa kita memilih array of object, dan untuk kasus seperti apa kita memilih atribut bernama satu-satu?],
        [Array of object dipilih jika kelas Whole memiliki sekumpulan banyak objek Part yang sejenis (multiplicity 1..n), di mana tiap objek tidak memiliki peran semantik khusus yang berbeda (contoh: 10 kursi gerbong). Atribut bernama satu-satu dipilih jika jumlah objek Part sedikit/pasti dan tiap objek memiliki peran fungsional yang spesifik dan berbeda (contoh: `masinis` dan `asisten` pada `KeretaApi`).],
      ),
      (
        [Terapkan kriteria kode (siapa yang memanggil new) pada relasi Gerbong-Kursi dan Kursi-Penumpang: manakah Aggregation dan manakah Composition?],
        [`Gerbong` ke `Kursi` adalah *Composition*, karena objek `Kursi` diciptakan langsung secara internal di method `initKursi()` pada class `Gerbong` (`this.arrayKursi[i] = new Kursi(...)`). Sedangkan `Kursi` ke `Penumpang` adalah *Aggregation*, karena objek `Penumpang` dibuat mandiri di luar kelas (di `Main`) lalu disuntikkan via setter (`kursi.setPenumpang(penumpang)`).],
      ),
    ),
  ),
  (
    subbab: "Percobaan 5: Composition Kepemilikan Eksklusif (Mobil dan Mesin)",
    deskripsi: [
      Percobaan kelima menguji implementasi Composition murni satu-ke-satu. Class `Mobil1` memiliki atribut `mesin` yang diinstansiasi secara internal di dalam constructor-nya menggunakan operator `new`. Class `Mobil1` sengaja tidak menyediakan method `setMesin()`, sehingga objek `Mesin` berstatus eksklusif dan siklus hidupnya terikat mutlak dengan objek `Mobil1`.

      ```java
      // Mobil1.java
      public class Mobil1 {
          private String merek;
          private Mesin mesin;

          public Mobil1(String merek) {
              this.merek = merek;
              this.mesin = new Mesin(); // Komposisi murni: instansiasi internal
          }

          public void tampilkanInfo() {
              System.out.println("Mobil: " + this.merek);
              System.out.println("Mesin: " + this.mesin.getTipe());
          }
      }
      ```

      #align(center)[
        #image("../screenshots/ss05_percobaan5_mobil_mesin_komposisi.png", width: 85%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Pada class Mobil, baris manakah yang menunjukkan bahwa Mesin adalah bagian yang “dimiliki secara eksklusif” oleh Mobil?],
        [Ditunjukkan pada baris instansiasi di constructor `Mobil1`: `this.mesin = new Mesin();` serta tidak tersedianya method setter `setMesin(Mesin mesin)`.],
      ),
      (
        [Apa yang terjadi secara desain jika ditambahkan method setMesin(Mesin mesin) pada class Mobil? Apakah relasi ini tetap Composition?],
        [Relasi tersebut akan *kehilangan karakteristik Composition murninya* dan bergeser menjadi *Aggregation*. Adanya setter memungkinkan objek `Mesin` dari luar disuntikkan atau diganti sewaktu-waktu, merusak prinsip kepemilikan eksklusif dan keterikatan *lifecycle* mutlak.],
      ),
      (
        [Bandingkan dengan Percobaan 1 (Laptop-Processor): sebutkan satu perbedaan baris kode yang membuat salah satunya Aggregation dan yang lain Composition!],
        [Pada Percobaan 1 (`Laptop`), objek part diterima lewat parameter constructor dari luar (`this.proc = proc;`), sedangkan pada Percobaan 5 (`Mobil1`), objek part dibuat langsung secara mandiri di dalam constructor (`this.mesin = new Mesin();`).],
      ),
      (
        [Jika objek mobil di-set null, apa yang terjadi pada objek Mesin miliknya? Bandingkan dengan nasib Processor pada Percobaan 1!],
        [Objek `Mesin` akan otomatis kehilangan satu-satunya referensi yang mengarah kepadanya, menjadi *unreachable* di heap memory, dan segera dibersihkan oleh Garbage Collector. Sebaliknya pada Percobaan 1, objek `Processor` masih tetap hidup karena alamat referensinya sempat ditampung di variabel luar (`Processor p = ...`) di fungsi `main`.],
      ),
      (
        [Jika ditambahkan constructor kedua public Mobil(String merek, Mesin mesin), apakah relasi berubah menjadi Aggregation? Jelaskan!],
        [Ya, berubah menjadi *Aggregation*. Karena objek `Mesin` di-instansiasi di luar kelas `Mobil` terlebih dahulu kemudian disuntikkan lewat parameter constructor, membuktikan `Mesin` memiliki *lifecycle* independen.],
      ),
    ),
  ),
  (
    subbab: "Percobaan 6: Dependency / Uses-A (Laptop dan Printer)",
    deskripsi: [
      Percobaan keenam mempelajari bentuk relasi paling longgar (*loose coupling*) yaitu *Dependency* (*uses-a*). Class `Laptop1` tidak menyimpan objek `Printer` sebagai atribut instansiasi. Objek `Printer` hanya dilewatkan sesaat sebagai parameter method `cetakDokumen(Printer printer, String namaFile)`. Setelah method selesai dieksekusi, ikatan kedua objek langsung terlepas.

      ```java
      // Laptop1.java
      public class Laptop1 {
          private String merk;

          public Laptop1(String merk) {
              this.merk = merk;
          }

          // Printer hanya masuk lewat parameter method, tidak disimpan sebagai atribut
          public void cetakDokumen(Printer printer, String namaFile) {
              System.out.println(merk + " mengirim dokumen ke printer...");
              printer.cetak(namaFile);
          }
      }
      ```

      #align(center)[
        #image("../screenshots/ss06_percobaan6_laptop_printer_dependensi.png", width: 85%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Apakah class Laptop pada percobaan ini memiliki atribut bertipe Printer? Bandingkan dengan Percobaan 1!],
        [Tidak ada atribut bertipe `Printer` pada class `Laptop1`. Berbeda dengan Percobaan 1 di mana `Processor` disimpan secara permanen sebagai atribut instansiasi, pada Percobaan 6 objek `Printer` hanya diterima sebagai parameter method `cetakDokumen`.],
      ),
      (
        [Setelah method cetakDokumen() selesai dijalankan, apakah Laptop masih menyimpan referensi ke objek printer yang tadi dipakai? Jelaskan!],
        [Tidak. Parameter `printer` hanya berstatus sebagai variabel lokal pada *stack frame* method `cetakDokumen()`. Begitu method selesai dieksekusi (*stack frame di-pop*), referensi tersebut hilang dan class `Laptop1` tidak menyimpan status apa pun mengenai objek printer.],
      ),
      (
        [Mengapa relasi Laptop-Printer pada percobaan ini disebut Dependency (uses-a), bukan Aggregation?],
        [Karena tidak ada hubungan kepemilikan (*ownership / has-a*) maupun penyimpanan status (*state retention*). Class `Laptop1` hanya bergantung (*depends on*) sementara waktu kepada layanan class `Printer` untuk menyelesaikan operasi pencetakan dokumen.],
      ),
      (
        [Jika kode diubah sehingga Printer disimpan sebagai atribut class Laptop, apakah relasi berubah menjadi Aggregation? Jelaskan!],
        [Ya, relasi tersebut berubah menjadi *Aggregation*. Karena objek `Printer` disimpan sebagai atribut instansiasi di dalam class `Laptop` dan referensinya dipertahankan sepanjang masa hidup objek `Laptop`.],
      ),
      (
        [Lengkapi tabel perbandingan relasi: Aggregation, Composition, dan Dependency!],
        [Berikut adalah matriks perbandingan ketiga relasi kelas:
        #v(0.5em)
        #table(
          columns: (1fr, 1.2fr, 1.5fr, 2fr),
          align: (center, center, center, left),
          stroke: 0.5pt + rgb("#cbd5e1"),
          fill: (col, row) => if row == 0 { rgb("#e2e8f0") } else { none },
          [Relasi], [Disimpan sbg Atribut?], [Lokasi Pemanggilan `new`], [Karakteristik Lifecycle],
          [*Aggregation*], [Ya], [Luar kelas (caller / `main`)], [Part hidup mandiri (*independent*). Disuntikkan via constructor/setter.],
          [*Composition*], [Ya], [Dalam kelas (`constructor`)], [Part terikat mati (*tight coupling*). Part musnah bersama Whole. Tidak ada setter.],
          [*Dependency*], [Tidak], [Bebas (caller / `main`)], [Temporer (*loose coupling*). Objek hanya lewat sebagai parameter method.],
        )],
      ),
    ),
  ),
))

#tugas(data: (
  (
    subbab: "Tugas Mandiri 1: Studi Kasus Sistem RPG Battle Berorientasi Objek",
    konten: [
      Studi kasus mandiri yang dibangun adalah *Sistem Pertarungan RPG Battle* (`assignments`), yang mengintegrasikan 5 class domain (di luar `Main`):
      - `Hero`: Superclass entitas karakter game.
      - `Fighter`: Subclass `Hero` yang bertindak sebagai Whole.
      - `Weapon`: Senjata khusus milik `Fighter` (*Composition*).
      - `Item`: Aksesoris pertahanan/kekuatan yang dapat dipasang dan dilepas (*Aggregation*).
      - `Potion`: Ramuan pemulih HP sekali pakai (*Dependency*).

      ```java
      // Fighter.java (mencakup Composition dan Aggregation)
      public class Fighter extends Hero {
          // 1. Composition: Weapon dibuat secara internal dan eksklusif
          private Weapon weapon;
          // 2. Aggregation: Item dibuat mandiri di luar kelas dan disuntikkan
          private Item item;

          public Fighter(String name, int level, int health, int strength, int defense, int speed, 
                         String weaponName, int power, Item item) {
              super(name, level, health, strength, defense, speed);
              this.weapon = new Weapon(weaponName, power); // Composition
              this.item = item;                            // Aggregation
          }

          public void setItem(Item item) {
              this.item = item; // Setter untuk mengganti item
          }
      }

      // Hero.java (mencakup Dependency)
      public void usePotion(Potion potion) {
          this.health += potion.getHealAmount();
          System.out.println(name + " menggunakan " + potion.getName() + "...");
      }
      ```

      *Tinjauan Kriteria Tiga Relasi pada Studi Kasus:*
      1. *Composition (`Fighter` $arrow$ `Weapon`):* Objek `Weapon` di-instansiasi langsung menggunakan operator `new` di dalam constructor `Fighter`. Class `Fighter` tidak menyediakan method `setWeapon()`, sehingga *lifecycle* `Weapon` terikat mati dengan `Fighter`.
      2. *Aggregation (`Fighter` $arrow$ `Item`):* Objek `Item` (`Aegis Shield`, `Ring of Power`) dibuat mandiri di luar kelas dan disuntikkan lewat parameter constructor atau setter `setItem()`. Saat item diganti, objek item lama tetap eksis di heap memory.
      3. *Dependency (`Hero`/`Fighter` $arrow$ `Potion`):* Objek `Potion` tidak disimpan sebagai atribut kelas, melainkan hanya dilewatkan sesaat via parameter method `usePotion(Potion potion)` dan segera lepas setelah nilai `health` bertambah.

      #align(center)[
        #image("../screenshots/ss07_tugas_mandiri_rpg_battle.png", width: 85%)
      ]
    ],
  ),
  (
    subbab: "Tugas Mandiri 2: Pedoman Keputusan Desain Relasi Antar-Kelas",
    konten: [
      Dalam merancang arsitektur sistem berorientasi objek baru, keputusan memilih relasi ditentukan berdasarkan kebutuhan persistensi status (*state retention*) dan keterikatan siklus hidup (*lifecycle*) melalui pertanyaan kunci berikut:
      
      1. *Apakah objek target perlu disimpan statusnya sepanjang masa hidup kelas pemanggil?* Jika *tidak* dan hanya dibutuhkan sesaat untuk menyelesaikan satu tugas operasi tertentu, gunakan relasi *Dependency* (*uses-a*).
      2. *Jika objek harus disimpan sebagai atribut (has-a), apakah objek part memiliki identitas mandiri dan masih bermakna jika objek whole dihapus?* Jika *ya* (seperti pelanggan pada pesanan, buku pada perpustakaan, atau aksesoris pada karakter), gunakan relasi *Aggregation* (*loose coupling* via constructor/setter injection).
      3. *Apakah objek part merupakan komponen internal eksklusif yang tidak dapat hidup atau tidak memiliki arti tanpa kehadiran whole?* Jika *ya* (seperti kursi pada gerbong, mesin pada mobil, atau baris detail nota), gunakan relasi *Composition* (*tight coupling* dengan `new` internal tanpa setter).
    ],
  ),
))
