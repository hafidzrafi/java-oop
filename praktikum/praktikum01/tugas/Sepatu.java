package praktikum.praktikum01.tugas;

public class Sepatu {
    String brand = "Nike";
    int ukuran = 40;

    void gantiBrand(String brand) {
        this.brand = brand;
    }

    void gantiUkuran(int ukuran) {
        this.ukuran = ukuran;
    }

    void info() {
        System.out.println("Brand : " + brand);
        System.out.println("Ukuran: " + ukuran);
    }
}
