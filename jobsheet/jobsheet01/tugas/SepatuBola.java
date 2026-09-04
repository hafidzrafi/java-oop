package jobsheet.jobsheet01.tugas;

public class SepatuBola extends Sepatu {
    int jumlahPul = 12;
    String tipeStud = "FG (Firm Ground)";

    void setJumlahPul(int jumlahPul) {
        this.jumlahPul = jumlahPul;
    }

    void setTipeStud(String tipeStud) {
        this.tipeStud = tipeStud;
    }

    @Override
    void info() {
        super.info();
        System.out.println("Jumlah Pul : " + jumlahPul);
        System.out.println("Tipe Stud  : " + tipeStud);
        System.out.println("Kategori   : Sepatu Bola");
    }
}
