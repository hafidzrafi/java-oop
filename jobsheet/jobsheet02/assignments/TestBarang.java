package jobsheet.jobsheet02.assignments;

public class TestBarang {
    public static void main(String[] args) {
        Barang brg1 = new Barang();

        brg1.kode = "B001";
        brg1.namaBarang = "Buku";
        brg1.hargaDasar = 10000;
        brg1.diskon = 0.1f;
        brg1.tampilData();
    }
}
