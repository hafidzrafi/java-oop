package jobsheet.jobsheet06.src.experiments.exp5;

public class Karyawan {
    public String nama;
    public String alamat;
    public String jk;
    public int gaji;
    public int umur;

    public Karyawan() {}

    public Karyawan(String nama, String alamat, String jk, int gaji, int umur) {
        this.nama = nama;
        this.alamat = alamat;
        this.jk = jk;
        this.gaji = gaji;
        this.umur = umur;
    }

    public void tampilDataKaryawan() {
        System.out.println("Nama            : " + nama);
        System.out.println("Alamat          : " + alamat);
        System.out.println("Jenis Kelamin   : " + jk);
        System.out.println("Umur            : " + umur);
        System.out.println("Gaji            : " + gaji);
    }
}
