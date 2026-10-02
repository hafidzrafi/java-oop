package jobsheet.jobsheet06.src.assignments;

public class TestTiket {
    public static void main(String[] args) {
        // Menggunakan no-argument constructor sesuai instruksi praktikum jobsheet
        TiketKereta tk = new TiketKereta();
        tk.kodeTiket = "KA-001";
        tk.namaPenumpang = "Andi";
        tk.asal = "Malang";
        tk.tujuan = "Jakarta";
        tk.setHargaDasar(350000);
        tk.nomorGerbong = 3;
        tk.nomorKursi = "12A";

        TiketDomestik td = new TiketDomestik("GA-102", "Sinta", "Surabaya", "Denpasar", 900000, "Garuda Indonesia", 25, 75000);
        TiketInternasional ti = new TiketInternasional("SQ-205", "Budi", "Jakarta", "Singapura", 2500000, "Singapore Airlines", 20, "c1234567", 150000);

        System.out.println("\n========== TIKET KERETA ==========");
        tk.tampilKereta();
        System.out.println("\n========== TIKET DOMESTIK ==========");
        td.tampilDomestik();
        System.out.println("\n========== TIKET INTERNASIONAL ==========");
        ti.tampilInternasional();
    }
}
