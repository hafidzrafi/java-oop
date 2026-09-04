package jobsheet.jobsheet02.assignments;

public class Karyawan {
    public int id;
    public String nama;
    public String jenisKelamin;
    public String jabatan;
    public double gaji;

    public void tampilDataDiriPribadi() {
        System.out.println("ID            : " + id);
        System.out.println("Nama          : " + nama);
        System.out.println("Jenis Kelamin : " + jenisKelamin);
        System.out.println("Jabatan       : " + jabatan);
    }

    public void lihatGaji() {
        System.out.println("Gaji Bersih   : " + gaji);
    }
}
