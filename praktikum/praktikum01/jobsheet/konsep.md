Secara keseluruhan, Jobsheet 01 berfokus pada **3 pilar fundamental PBO**: **Instansiasi Objek (`new`)**, **Enkapsulasi Ketat (*Access Modifiers*)**, dan **Pewarisan (*Inheritance & Overriding*)**. Karena kamu sudah menguasai PBO di Python, transisi ke Java hanyalah pergeseran dari paradigma *Dynamic Duck-Typing* menuju *Strict Static Typing & Compile-Time Enforcement*.

Berikut adalah peta konsep menyeluruh dan daftar sintaks penting Java yang dipetakan langsung dari Python.

---

### 1. Peta Konsep Utama Jobsheet 01

```mermaid
graph TD
    subgraph "1. Blueprint & State"
        A[Class Bike / PerangkatElektronik] -->|Atribut: private/protected| B[Enkapsulasi / Data Hiding]
        A -->|Method: public| C[Perilaku / Mutator & Accessor]
    end

    subgraph "2. Memori & Runtime"
        D[Keyword 'new'] -->|Alokasi Heap Memori| E[Object Instance: mountainBike1]
        D -->|Alokasi Heap Memori| F[Object Instance: mountainBike2]
    end

    subgraph "3. Ekspansi & Reusabilitas"
        A -->|extends / Inheritance| G[Subclass: RoadBike / Laptop / Smartwatch]
        G -->|@Override & super| H[Method Overriding: printInfo / cetakInformasi]
    end
```

---

### 2. Bedah 4 Konsep Kunci (Java vs Python)

#### A. Instansiasi Objek & Entry Point
- **Python:** Entry point menggunakan `if __name__ == "__main__":`, pembuatan objek cukup `b = Bike()`.
- **Java:** Program Java *wajib* dimulai dari method `public static void main(String[] args)`. Pembuatan objek wajib menyebutkan tipe data dan keyword **`new`** untuk meminta ruang memori di heap: `Bike b = new Bike();`.

#### B. Enkapsulasi & Access Modifiers
- **Python:** `_variabel` (hanya konvensi) atau `__variabel` (*name mangling*). Python menganut filosofi *"We are all consenting adults here"*, artinya data privat masih bisa diakses paksa.
- **Java:** Enkapsulasi di-*enforce* secara keras oleh compiler. Jika suatu atribut berstatus `private`, class luar **mustahil** mengaksesnya dan program gagal dikompilasi (*compile error*).

| Modifier di Java | Aksesibilitas | Padanan Konseptual di Python |
| :--- | :--- | :--- |
| **`private`** | Hanya di dalam file class itu sendiri | `self.__variabel` |
| **`protected`** | Class itu sendiri + semua class turunannya | `self._variabel` |
| **`public`** | Bebas diakses dari package/class mana pun | `self.variabel` |

#### C. Pewarisan (*Inheritance*)
- **Python:** `class RoadBike(Bike):`
- **Java:** `public class RoadBike extends Bike {`
- **Tujuan:** Menggunakan kembali logika parent (`Bike`) tanpa menduplikasi baris kode, lalu menambahkan atribut spesifik seperti `tireWidth`.

#### D. Method Overriding & Keyword `super`
- **Python:** Kamu menimpa fungsi dengan nama sama dan memanggil `super().print_info()`.
- **Java:** Menggunakan anotasi **`@Override`** di atas method, lalu memanggil method parent dengan sintaks **`super.printInfo()`** (tanpa tanda kurung pada kata `super`).

---

### 3. Cheat Sheet Sintaks: Java vs Python

| Fitur / Konsep | Sintaks Java | Sintaks Python (OOP) | Catatan Penting |
| :--- | :--- | :--- | :--- |
| **Package / Module** | `package praktikum.percobaan1;` | Folder + `__init__.py` | Java mewajibkan deklarasi package sesuai path folder fisik |
| **Definisi Class** | `public class Bike { ... }` | `class Bike:` | Nama file Java harus persis sama dengan nama public class |
| **Atribut Tipe Data** | `private String brand;`<br>`private int speed;` | `def __init__(self):`<br>&nbsp;&nbsp;&nbsp;&nbsp;`self.brand: str = ""` | Di Java, atribut wajib dideklarasikan di level class sebelum dipakai |
| **Konstanta / Read-Only** | `private final int[] LIMITS;` | `LIMITS: Final[list[int]]` | `final` mencegah nilai/referensi diubah setelah inisialisasi |
| **Method (Tanpa Return)** | `public void setBrand(String name)` | `def set_brand(self, name: str):` | `void` artinya method tidak mengembalikan nilai (*None*) |
| **Method (Dengan Return)** | `public int speedUp(int val)` | `def speed_up(self, val: int) -> int:` | Tipe data kembalian wajib dideklarasikan di Java |
| **Instance Keyword** | `this.brand` *(opsional jika tidak ambigu)* | `self.brand` *(wajib)* | `this` di Java merujuk pada objek saat ini (mirip `self`) |
| **Instansiasi Objek** | `Bike b = new Bike();` | `b = Bike()` | Keyword `new` mengalokasikan heap memory baru |
| **Pewarisan (Inherit)** | `class RoadBike extends Bike` | `class RoadBike(Bike):` | Java hanya mendukung *single inheritance* untuk class |
| **Panggil Parent Method** | `super.printInfo();` | `super().print_info()` | Digunakan saat subclass ingin menjalankan logika method induk |
| **Anotasi Override** | `@Override`<br>`public void printInfo() {..}` | Tidak ada (cukup timpa fungsi) | `@Override` adalah instruksi ke compiler untuk memvalidasi method induk |
| **Cetak ke Terminal** | `System.out.println("Text: " + x);` | `print(f"Text: {x}")` | Java menggunakan tanda `+` untuk konkatenasi string |
| **Main Entry Point** | `public static void main(String[] args)` | `if __name__ == '__main__':` | Titik awal eksekusi program oleh Java Virtual Machine (JVM) |

---

### 4. Logika Bisnis Spesifik pada Kode [Bike.java](file:///Users/rafi/Projects/05_Academic/sem-3/oop/praktikum/praktikum01/percobaan1/Bike.java)

Perhatikan logika pembatasan kecepatan di method `speedAcceleration`:
```java
private final int[] GEAR_SPEED_LIMITS = {5, 10, 25, 30, 40, 60};
// Indeks array Java berbasis 0:
// Gear 1 -> GEAR_SPEED_LIMITS[0] = 5 km/h
// Gear 2 -> GEAR_SPEED_LIMITS[1] = 10 km/h
// dst...

public int speedAcceleration(int increment) {
    speed += increment;
    if (speed > GEAR_SPEED_LIMITS[gear - 1]) {
        speed = GEAR_SPEED_LIMITS[gear - 1]; // Batasi ke batas maksimal gear aktif
    }
    return speed;
}
```
Logika di atas menjamin bahwa saat sepeda berada di gigi 1 (`gear = 1`), kecepatannya tidak akan pernah melampaui `5 km/h` meskipun dipacu dengan `increment = 50`. Inilah contoh penerapan **Enkapsulasi Aturan Bisnis** di dalam class.