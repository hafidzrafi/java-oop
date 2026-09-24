package assignments;

public class Main {
    public static void main(String[] args) {
        System.out.println("====================================================");
        System.out.println("  DEMONSTRASI RELASI KELAS (TUGAS MANDIRI JOBSHEET 4)");
        System.out.println("====================================================");

        // 1. Relasi Aggregation: Item dibuat mandiri di luar kelas Fighter
        Item shield = new Item("Aegis Shield", 5, 20);
        System.out.println("[Aggregation] Objek Item dibuat independen: " + shield.getName());

        // 2. Relasi Composition: Fighter membuat Weapon-nya sendiri secara internal
        //    Item diinjeksi ke Fighter (Aggregation)
        Fighter aragorn = new Fighter("Aragorn", 10, 100, 25, 15, 12, "Anduril Flame", 50, shield);
        aragorn.info();
        System.out.println();

        // Aksi attack melibatkan Weapon (Composition) dan Item (Aggregation)
        aragorn.attack();
        System.out.println();

        // 3. Relasi Dependency: Objek Potion hanya dibuat dan dipakai temporer via parameter method
        Potion healthPotion = new Potion("Elixir of Life", 40);
        System.out.println("[Dependency] Menggunakan Potion lewat parameter method usePotion():");
        aragorn.usePotion(healthPotion);
        System.out.println();

        // Bukti Aggregation: Jika objek item baru diganti, objek shield lama tetap eksis
        Item ring = new Item("Ring of Power", 15, 5);
        aragorn.setItem(ring);
        System.out.println("[Aggregation] Ganti item ke: " + aragorn.getItem().getName());
        aragorn.attack();
        System.out.println("Objek shield lama masih eksis di memori: " + shield.getName());
        System.out.println("====================================================");
    }
}
