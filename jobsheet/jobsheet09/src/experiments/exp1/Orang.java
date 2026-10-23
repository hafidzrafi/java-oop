package jobsheet.jobsheet09.src.experiments.exp1;

public class Orang {
    private String nama;
    private Hewan hewanPeliharaan;

    public Orang(String nama) {
        this.nama = nama;
    }

    public void peliharaHewan(Hewan hewan) {
        this.hewanPeliharaan = hewan;
    }

    public void ajakPeliharaanJalanJalan() {
        System.out.println("My name is " + this.nama);
        System.out.println("My pet moves by: ");
        this.hewanPeliharaan.bergerak();
        System.out.println("----------------------------------------");
    }
}
