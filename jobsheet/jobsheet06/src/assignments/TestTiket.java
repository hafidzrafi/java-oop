package jobsheet.jobsheet06.src.assignments;

public class TestTiket {
    public static void main(String[] args) {
        TiketKereta tk = new TiketKereta("KA-001", "Andi", "Malang", "Jakarta", 350000, 3, "12A");
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
