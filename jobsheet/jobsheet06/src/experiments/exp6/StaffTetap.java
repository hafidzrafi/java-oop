package jobsheet.jobsheet06.src.experiments.exp6;

public class StaffTetap extends Staff {
    public String golongan;
    public int asuransi;

    public StaffTetap() {}

    public StaffTetap(String nama, String alamat, String jk, int umur, int gaji, int lembur, int potongan, String golongan, int asuransi) {
        super(nama, alamat, jk, gaji, umur, lembur, potongan);
        this.golongan = golongan;
        this.asuransi = asuransi;
    }

    public void tampilStaffTetap() {
        System.out.println("======================== Data Staff Tetap ========================");
        super.tampilDataStaff();
        System.out.println("Golongan        : " + golongan);
        System.out.println("Jumlah Asuransi : " + asuransi);
        System.out.println("Total Gaji      : " + (super.gaji + lembur - potongan - asuransi));
    }
}
