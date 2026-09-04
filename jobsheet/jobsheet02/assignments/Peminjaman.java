package jobsheet.jobsheet02.assignments;

public class Peminjaman {
    int id;
    String namaPeminjam;
    String namaGame;
    int lamaSewa;
    int harga = 10000;

    int hitungHargaSewa() {
        return harga * lamaSewa;
    }

    public void tampilDataPeminjaman() {
        System.out.println("ID              : " + id);
        System.out.println("Nama Peminjam   : " + namaPeminjam);
        System.out.println("Nama Game       : " + namaGame);
        System.out.println("Lama Sewa       : " + lamaSewa);
        System.out.println("Total Harga Sewa: " + hitungHargaSewa());
    }
}
