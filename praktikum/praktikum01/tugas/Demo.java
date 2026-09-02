package praktikum.praktikum01.tugas;

public class Demo {
    public static void main(String[] args) {
        System.out.println("==================================================");
        System.out.println("          DEMONSTRASI TUGAS PRAKTIKUM 01          ");
        System.out.println("==================================================");

        // 1. Objek Superclass: Sepatu
        System.out.println("\n--- [1] Demonstrasi Objek Sepatu (Induk) ---");
        Sepatu sepatuUmum = new Sepatu();
        sepatuUmum.gantiBrand("Bata");
        sepatuUmum.gantiUkuran(41);
        sepatuUmum.info();

        // 2. Objek Subclass 1: SepatuBola (Inheritance)
        System.out.println("\n--- [2] Demonstrasi Objek SepatuBola (Inheritance) ---");
        SepatuBola sepatuBola1 = new SepatuBola();
        sepatuBola1.gantiBrand("Adidas Predator");
        sepatuBola1.gantiUkuran(43);
        sepatuBola1.setJumlahPul(14);
        sepatuBola1.setTipeStud("SG (Soft Ground)");
        sepatuBola1.info();

        // 3. Objek Subclass 2: SepatuSekolah (Inheritance)
        System.out.println("\n--- [3] Demonstrasi Objek SepatuSekolah (Inheritance) ---");
        SepatuSekolah sepatuSekolah1 = new SepatuSekolah();
        sepatuSekolah1.gantiBrand("Warrior");
        sepatuSekolah1.gantiUkuran(40);
        sepatuSekolah1.gantiWarnaTali("Putih");
        sepatuSekolah1.setAdaPerekat(true);
        sepatuSekolah1.info();

        // 4. Objek Mandiri 1: Botol
        System.out.println("\n--- [4] Demonstrasi Objek Botol ---");
        Botol botolMinum = new Botol();
        botolMinum.isiUlang(150);
        botolMinum.minum(200);
        botolMinum.info();

        // 5. Objek Mandiri 2: KipasAngin
        System.out.println("\n--- [5] Demonstrasi Objek KipasAngin ---");
        KipasAngin kipasKamar = new KipasAngin();
        kipasKamar.aturKecepatan(2);
        kipasKamar.ubahModeSwing(true);
        kipasKamar.info();

        System.out.println("\n==================================================");
        System.out.println("               DEMO SELESAI                       ");
        System.out.println("==================================================");
    }
}
