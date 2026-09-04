package jobsheet.jobsheet02.assignments;

public class Barang {
    String kode;
    String namaBarang;
    int hargaDasar;
    float diskon;

    float hitungHargaJual() {
        return hargaDasar - (diskon * hargaDasar);
    }

    void tampilData() {
        System.out.println("Kode Barang       : " + kode);
        System.out.println("Nama Barang       : " + namaBarang);
        System.out.println("Harga Dasar       : " + hargaDasar);
        System.out.println("Diskon            : " + diskon);
        System.out.println("Harga Jual        : " + hitungHargaJual());
    }
}
