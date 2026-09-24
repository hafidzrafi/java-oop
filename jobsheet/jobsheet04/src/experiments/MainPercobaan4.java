package experiments;

public class MainPercobaan4 {
    public static void main(String[] args) {
        Penumpang p = new Penumpang("12345", "Krab");
        Gerbong gerbong = new Gerbong("A", 10);
        gerbong.setPenumpang(p, 1);
        System.out.println(gerbong.info());

        Penumpang budi = new Penumpang("1111", "Budi");
        gerbong.setPenumpang(budi, 1);
        System.out.println(gerbong.info());
    }
}