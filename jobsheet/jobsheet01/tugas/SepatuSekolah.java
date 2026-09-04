package jobsheet.jobsheet01.tugas;

public class SepatuSekolah extends Sepatu {
    String warnaTali = "Hitam";
    boolean adaPerekat = false;

    void gantiWarnaTali(String warna) {
        this.warnaTali = warna;
    }

    void setAdaPerekat(boolean adaPerekat) {
        this.adaPerekat = adaPerekat;
    }

    @Override
    void info() {
        super.info();
        System.out.println("Warna Tali : " + warnaTali);
        System.out.println("Ada Perekat: " + (adaPerekat ? "Ya" : "Tidak"));
        System.out.println("Kategori   : Sepatu Sekolah");
    }
}
