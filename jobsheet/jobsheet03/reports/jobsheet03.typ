#import "/laprak/_template/main.typ": lab_report, praktikum, tugas, tujuan, indent

#show: doc => lab_report(
  title: "LAPORAN PRAKTIKUM",
  course: "PEMROGRAMAN BERBASIS OBJEK",
  subtitle: "JOBSHEET 03 - ENKAPSULASI",
  name: "Mohammad Hafidz Rafi' Rabbani",
  nim: "254107020084",
  class: "2H",
  absent: "14",
  study_program: "PROGRAM STUDI TEKNIK INFORMATIKA",
  department: "JURUSAN TEKNOLOGI INFORMASI",
  institution: "POLITEKNIK NEGERI MALANG",
  year: "2026",
  doc,
)

#tujuan(data: (
  "Memahami konsep constructor dan aturan pembuatannya pada bahasa pemrograman Java.",
  "Mengimplementasikan 4 jenis access modifier (public, protected, default, dan private).",
  "Memahami konsep attribute dan method pada class serta mekanisme instansiasinya.",
  "Mengimplementasikan setter dan getter untuk menerapkan enkapsulasi data.",
  "Membaca dan memetakan notasi UML Class Diagram ke dalam source code Java.",
))

#praktikum(data: (
  (
    subbab: "Percobaan 1: Enkapsulasi",
    deskripsi: [
      Pada percobaan pertama, class `Motor` dibuat dengan attribute `kecepatan` dan `kontakOn` yang masih bertipe `public`. Dampaknya, class driver `MotorDemo` bisa langsung mengubah nilai `kecepatan` dari luar tanpa validasi kondisi mesin, sehingga kecepatan motor bisa tiba-tiba melonjak ke 50 saat kontak masih Off.

      ```java
      // MotorDemo.java
      Motor motor = new Motor();
      motor.printStatus();
      motor.kecepatan = 50;
      motor.printStatus();
      ```

      #align(center)[
        #image("ss01_motor_demo_awal.png", width: 80%)
      ]
    ],
    langkah: (),
    pertanyaan: (),
  ),
  (
    subbab: "Percobaan 2: Access Modifier",
    deskripsi: [
      Percobaan kedua memperbaiki class `Motor` dengan menerapkan enkapsulasi. Attribute `kecepatan` dan `kontakOn` diubah menjadi `private`, lalu aksesnya dikontrol lewat method `nyalakanMesin()`, `matikanMesin()`, `tambahKecepatan()`, dan `kurangiKecepatan()`. Ditambahkan juga batas maksimal kecepatan sebesar 100.

      ```java
      // Motor.java
      public void tambahKecepatan() {
          if (kontakOn && kecepatan < maxKecepatan) {
              kecepatan += 5;
          } else if (kontakOn && kecepatan >= maxKecepatan) {
              System.out.println("Kecepatan tidak bisa bertambah karena kecepatan sudah mencapai batas maksimal\n");
          } else {
              System.out.println("Kecepatan tidak bisa bertambah karena mesin off!!\n");
          }
      }
      ```

      #align(center)[
        #image("ss02_motor_demo_enkapsulasi.png", width: 80%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Pada class MotorDemo, saat kita menambah kecepatan untuk pertama kalinya, mengapa muncul peringatan "Kecepatan tidak bisa bertambah karena Mesin Off!"?],
        [Karena method `tambahKecepatan()` melakukan validasi apakah attribute `kontakOn` bernilai `true`. Kalau nilainya masih `false` (mesin off), penambahan kecepatan tidak dijalankan dan program menampilkan pesan peringatan tersebut.],
      ),
      (
        [Mengapa atribut kecepatan dan kontakOn diset private?],
        [Untuk menyesuaikan dengan kondisi di dunia nyata (IRL). Kecepatan motor tidak masuk akal jika bisa diubah bebas dari luar tanpa menyalakan mesin. Dengan di-set `private`, kedua attribute tersebut tidak bisa diakses langsung dan pengubahannya harus lewat method yang sudah memiliki validasi.],
      ),
      (
        [Ubah class Motor sehingga kecepatan maksimalnya adalah 100! Jelaskan modifikasi logika yang dilakukan.],
        [Menambahkan attribute `maxKecepatan = 100` dan validasi pada method `tambahKecepatan()`. Kecepatan hanya bertambah jika `kontakOn` bernilai `true` dan nilai `kecepatan` saat ini masih di bawah 100. Jika sudah mencapai 100 atau lebih, program menampilkan pemberitahuan bahwa batas maksimal sudah tercapai.],
      ),
    ),
  ),
  (
    subbab: "Percobaan 3: Getter dan Setter",
    deskripsi: [
      Pada percobaan ketiga, dibuat class `Anggota` dengan attribute `nama`, `alamat`, dan `simpanan` yang di-set `private`. Attribute `nama` dan `alamat` diberi method getter dan setter, sedangkan `simpanan` hanya memiliki getter dan nilainya diubah lewat method transaksi `setor()` dan `pinjam()`.

      ```java
      // Anggota.java
      public void setor(float uang) {
          simpanan += uang;
      }
      public void pinjam(float uang) {
          simpanan -= uang;
      }
      ```

      #align(center)[
        #image("ss03_koperasi_getter_setter.png", width: 80%)
      ]
    ],
    langkah: (),
    pertanyaan: (),
  ),
  (
    subbab: "Percobaan 4: Konstruktor dan Instansiasi",
    deskripsi: [
      Pada percobaan keempat, ditambahkan constructor dengan parameter `Anggota(String nama, String alamat)` pada class `Anggota`. Constructor ini memastikan attribute identitas langsung terisi nilai awal saat objek dibuat dengan `new`, dan nilai saldo `simpanan` otomatis dimulai dari 0.

      ```java
      // Anggota.java
      public Anggota(String nama, String alamat) {
          this.nama = nama;
          this.alamat = alamat;
          this.simpanan = 0;
      }
      ```

      #align(center)[
        #image("ss04_koperasi_konstruktor.png", width: 80%)
      ]
    ],
    langkah: (),
    pertanyaan: (
      (
        [Apa yang dimaksud dengan getter dan setter?],
        [Getter dan setter adalah method khusus yang digunakan untuk mengakses dan mengubah private attribute di class Java. Getter digunakan untuk mengambil atau membaca nilai private attribute, sedangkan setter untuk mengatur atau memperbarui nilainya.],
      ),
      (
        [Apa kegunaan dari method getSimpanan()?],
        [Fungsinya untuk mengambil dan membaca nilai dari private attribute `simpanan`.],
      ),
      (
        [Method apa yang digunakan untuk menambah saldo pada class Anggota?],
        [Method `setor()` yang memiliki parameter `uang`, yang nilainya kemudian ditambahkan ke attribute `simpanan`.],
      ),
      (
        [Apa yang dimaksud dengan konstruktor?],
        [Constructor adalah method spesial di Java yang otomatis dieksekusi saat menginisialisasi object baru menggunakan keyword `new`. Biasanya digunakan untuk memberikan nilai default awal pada attribute object agar tidak kosong saat dibuat. Nama constructor harus sama dengan nama class dan tidak memiliki return type.],
      ),
      (
        [Sebutkan aturan-aturan dalam membuat konstruktor di Java!],
        [(1) Nama constructor harus sama persis dengan nama class. (2) Tidak memiliki return type apapun, termasuk `void`. (3) Boleh menggunakan access modifier (public, private, protected, default), namun tidak boleh menggunakan modifier seperti abstract, static, final, atau synchronized.],
      ),
      (
        [Apakah boleh sebuah konstruktor bertipe (memiliki access modifier) private? Jelaskan kegunaannya!],
        [Boleh. Digunakan agar tidak ada pembuatan object dari luar class tersebut. Biasanya diterapkan untuk utility class atau helper class yang hanya berisi method static.],
      ),
      (
        [Kapan kita harus menggunakan konstruktor dengan passing parameter?],
        [Ketika kita ingin memberikan nilai awal yang spesifik pada suatu attribute saat object pertama kali dibuat, sehingga mencegah attribute tidak memiliki nilai yang valid tepat setelah diinisialisasi.],
      ),
      (
        [Apa perbedaan antara inisialisasi atribut dan instansiasi atribut/objek?],
        [Instantiation adalah proses membuat object baru di memory heap menggunakan keyword `new`. Sedangkan initialization adalah proses mengisi atau memberikan nilai awal ke suatu attribute atau variable.],
      ),
      (
        [Apa perbedaan antara inisialisasi method (definisi method) dan instansiasi / pemanggilan method?],
        [Secara konsep Java murni tidak ada istilah instansiasi method, karena yang di-instantiate ke heap memory adalah class/object. Namun dalam konteks praktikum: inisialisasi method adalah saat kita membuat struktur method di dalam class (nama, parameter, return type, body kode), sedangkan pemanggilan method (method invocation) adalah saat method tersebut dieksekusi lewat object yang sudah dibuat (`object.method()`).],
      ),
    ),
  ),
))

#tugas(data: (
  (
    subbab: "Tugas 1, 2, dan 3: Enkapsulasi Nilai Usia (EncapDemo & EncapTest)",
    konten: [
      Class `EncapDemo` mengimplementasikan enkapsulasi untuk attribute `name` dan `age`. Method `setAge(int age)` dimodifikasi menggunakan validasi `if-else`: jika input `age` lebih dari 30 maka nilai otomatis di-set ke 30, dan jika kurang dari 18 otomatis di-set ke 18.

      ```java
      // EncapDemo.java
      public void setAge(int age) {
          if (age > 30) {
              this.age = 30;
          } else if (age < 18) {
              this.age = 18;
          } else {
              this.age = age;
          }
      }
      ```

      Pada `EncapTest`, ketika nilai `age` diisi 35 lewat `encap.setAge(35)`, output yang tampil di konsol tetap 30 karena terjaring oleh validasi `age > 30`.

      #align(center)[
        #image("ss05_encap_test.png", width: 80%)
      ]
    ],
  ),
  (
    subbab: "Tugas 4, 5, dan 6: Manajemen Kargo Ekspedisi (Kontainer & TestLogistik)",
    konten: [
      Membuat class `Kontainer` dengan semua attribute di-set `private` (`nomorResi`, `namaPemilik`, `kapasitasMaksimal`, `beratMuatanSaatIni`). Pada constructor, data resi, pemilik, dan kapasitas maksimal diinisialisasi dengan berat awal 0. Method `tambahMuatan()` memvalidasi agar tidak melebihi kapasitas maksimal, sedangkan `turunkanMuatan()` dibatasi maksimal 50% dari berat muatan saat ini demi alasan keselamatan kerja crane. Pada class driver `TestLogistik`, ditambahkan interaksi input dinamis menggunakan `java.util.Scanner`.

      ```java
      // Kontainer.java
      public void turunkanMuatan(float jumlah) {
          if (jumlah > beratMuatanSaatIni / 2) {
              System.out.println("Maaf, demi keselamatan, pembongkaran muatan satu kali jalan tidak boleh melebihi 50% dari muatan saat ini!");
          } else {
              if (beratMuatanSaatIni - jumlah >= 0) {
                  beratMuatanSaatIni -= jumlah;
              } else {
                  System.out.println("Jumlah yang diturunkan melebihi jumlah yang ada.");
              }
          }
      }
      ```

      Saat diuji coba memasukkan muatan 6.000 kg, sistem menolak karena kapasitas maksimal kontainer hanya 5.000 kg.

      #align(center)[
        #image("ss06_test_logistik.png", width: 80%)
      ]
    ],
  ),
  (
    subbab: "Tugas 7: Pemesanan Tiket Bioskop Aman (Tiket & TestBioskop)",
    konten: [
      Membuat class `Tiket` dengan attribute `judulFilm`, `hargaDasar`, dan `statusPembayaran` yang di-set `private`. Pada constructor, nilai `statusPembayaran` default-nya selalu `false` (belum lunas), dan jika input `hargaDasar` negatif (< 0) otomatis fallback ke default Rp 35.000,00. Attribute `statusPembayaran` bersifat read-only tanpa method setter, dan hanya bisa diubah menjadi `true` lewat method `lakukanPembayaran()`.

      ```java
      // Tiket.java
      public Tiket(String judulFilm, Double hargaDasar) {
          this.judulFilm = judulFilm;
          if (hargaDasar < 0) {
              this.hargaDasar = 35000.0;
          } else {
              this.hargaDasar = hargaDasar;
          }
          this.statusPembayaran = false;
      }

      public void lakukanPembayaran() {
          this.statusPembayaran = true;
      }
      ```

      #align(center)[
        #image("ss07_test_bioskop.png", width: 80%)
      ]
    ],
  ),
))
