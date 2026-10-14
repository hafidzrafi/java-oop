package jobsheet.jobsheet07.src.assignments;

public class Main {
    public static void main(String[] args) {
        System.out.println("=== Pengujian Langsung Subclass (Direct Instantiation) ===");
        Mahasiswa mahasiswa = new Mahasiswa();
        Dosen dosen = new Dosen();

        mahasiswa.makan();
        mahasiswa.bernapas();
        mahasiswa.tidur();

        System.out.println();
        dosen.makan();
        dosen.bernapas();
        dosen.lembur();

        System.out.println("\n=== Dynamic Method Dispatch (Runtime Polymorphism) ===");
        Manusia manusia1 = new Mahasiswa();
        Manusia manusia2 = new Dosen();

        manusia1.makan();
        manusia1.bernapas();

        System.out.println();
        manusia2.makan();
        manusia2.bernapas();
    }
}
