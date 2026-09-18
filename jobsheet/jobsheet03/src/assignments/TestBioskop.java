package jobsheet.jobsheet03.src.assignments;

public class TestBioskop {
    public static void main(String[] args) {
        Tiket tiket1 = new Tiket("avengers: endgame", -500000.0);

        System.out.println("Film: " + tiket1.getJudulFilm());
        System.out.println("Harga tiket: " + tiket1.getHargaDasar());
        System.out.println("Status Lunas? " + tiket1.isStatusPembayaran());

        System.out.println("\nMemproses pembayaran....");
        tiket1.lakukanPembayaran();
        System.out.println("Status Lunas? " + tiket1.isStatusPembayaran());
    }
}
