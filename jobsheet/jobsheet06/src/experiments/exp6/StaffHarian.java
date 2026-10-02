package jobsheet.jobsheet06.src.experiments.exp6;

public class StaffHarian extends Staff {
    public int jmlJamKerja;

    StaffHarian() {}

    public StaffHarian(String nama, String alamat, String jk, int umur, int gaji, int lembur, int potongan, int jmlJamKerja) {
        super(nama, alamat, jk, gaji, umur, lembur, potongan);
        this.jmlJamKerja = jmlJamKerja;
    }

    public void tampilStaffHarian() {
        System.out.println("======================== Data Staff Harian ========================");
        super.tampilDataStaff();
        System.out.println("Jumlah Jam Kerja: " + jmlJamKerja);
        System.out.println("Total Gaji      : " + (super.gaji * jmlJamKerja + lembur - potongan));
    }
}
