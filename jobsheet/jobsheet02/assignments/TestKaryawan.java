package jobsheet.jobsheet02.assignments;

public class TestKaryawan {
    public static void main(String[] args) {
        Karyawan k1 = new Karyawan();
        Karyawan k2 = new Karyawan();
        Karyawan k3 = new Karyawan();

        k1.id = 101;
        k1.nama = "Rafi";
        k1.jenisKelamin = "Laki-laki";
        k1.jabatan = "Manager";
        k1.gaji = 10000000;
        k1.tampilDataDiriPribadi();
        k1.lihatGaji();

        k2.id = 102;
        k2.nama = "Citra";
        k2.jenisKelamin = "Perempuan";
        k2.jabatan = "Staff";
        k2.gaji = 5000000;
        k2.tampilDataDiriPribadi();
        k2.lihatGaji();

        k3.id = 103;
        k3.nama = "Doni";
        k3.jenisKelamin = "Laki-laki";
        k3.jabatan = "Staff";
        k3.gaji = 5000000;
        k3.tampilDataDiriPribadi();
        k3.lihatGaji();
    }
}
