package jobsheet.jobsheet06.src.experiments.exp6;

public class Staff extends Karyawan {
    public int lembur;
    public int potongan;

    public Staff() {}

    public Staff(String nama, String alamat, String jk, int gaji, int umur, int lembur, int potongan) {
        super(nama, alamat, jk, gaji, umur);
        this.lembur = lembur;
        this.potongan = potongan;
    }

    public void tampilDataStaff() {
        super.tampilDataKaryawan();
        System.out.println("Lembur          : " + lembur);
        System.out.println("Potongan        : " + potongan);
        System.out.println("Total Gaji      : " + (super.gaji + lembur - potongan));
    }
}
