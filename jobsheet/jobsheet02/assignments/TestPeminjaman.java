package jobsheet.jobsheet02.assignments;

public class TestPeminjaman {
    public static void main(String[] args) {
        Peminjaman p1 = new Peminjaman();
        Peminjaman p2 = new Peminjaman();
        Peminjaman p3 = new Peminjaman();

        p1.id = 1;
        p1.namaPeminjam = "Rafi";
        p1.namaGame = "Mobile Legends";
        p1.lamaSewa = 2;
        p1.tampilDataPeminjaman();

        p2.id = 2;
        p2.namaPeminjam = "Citra";
        p2.namaGame = "PUBG";
        p2.lamaSewa = 3;
        p2.tampilDataPeminjaman();

        p3.id = 3;
        p3.namaPeminjam = "Doni";
        p3.namaGame = "Valorant";
        p3.lamaSewa = 1;
        p3.tampilDataPeminjaman();
    }
}
