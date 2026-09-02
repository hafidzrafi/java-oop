package praktikum.praktikum01.tugas;

public class KipasAngin {
    int kecepatan = 0; // 0 = Mati, 1 = Rendah, 2 = Sedang, 3 = Kencang
    boolean modeSwing = false; // true = geleng/berputar, false = diam

    void aturKecepatan(int level) {
        if (level < 0 || level > 3) {
            System.out.println("Kecepatan tidak valid (pilih 0 s.d 3).");
        } else {
            kecepatan = level;
            System.out.println("Kecepatan kipas diatur ke level " + level + (level == 0 ? " (Mati)" : ""));
        }
    }

    void ubahModeSwing(boolean aktif) {
        modeSwing = aktif;
        System.out.println("Mode swing: " + (aktif ? "AKTIF" : "NONAKTIF"));
    }

    void info() {
        System.out.println("Kecepatan : Level " + kecepatan);
        System.out.println("Swing     : " + (modeSwing ? "Aktif (Berputar)" : "Nonaktif (Diam)"));
    }
}
