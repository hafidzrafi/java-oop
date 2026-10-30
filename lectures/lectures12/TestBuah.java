package lectures.lectures12;

public class TestBuah {
    public static void main(String[] args) {
        Manusia ilham = new Manusia();

        Apel myApel = new Apel();
        Pisang myPisang = new Pisang();
        Durian myDurian = new Durian();

        ilham.makanBuah(myPisang);
        System.out.println();
        ilham.makanBuah(myApel);
        System.out.println();
        ilham.makanBuah(myDurian);
    }
}
