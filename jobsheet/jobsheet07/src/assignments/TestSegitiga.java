package jobsheet.jobsheet07.src.assignments;

public class TestSegitiga {
    public static void main(String[] args) {
        Segitiga s = new Segitiga();

        System.out.println("=== Pengujian Method Overloading Class Segitiga ===");
        System.out.println("Total Sudut (sudutA = 60)                : " + s.totalSudut(60));
        System.out.println("Total Sudut (sudutA = 60, sudutB = 40)   : " + s.totalSudut(60, 40));
        System.out.println("Keliling (sisiA = 3, sisiB = 4, sisiC = 5): " + s.keliling(3, 4, 5));
        System.out.println("Keliling (sisiA = 3, sisiB = 4) [Pythagoras]: " + s.keliling(3, 4));
    }
}
