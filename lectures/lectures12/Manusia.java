package lectures.lectures12;

public class Manusia {
    public void makanBuah(Buah x) {
        if (x instanceof Apel) {
            System.out.println("Apel langsung dimakan");
            ((Apel) x).tampilkanBiji();
        } else if (x instanceof Pisang) {
            System.out.println("Pisang dikupas terlebih dahulu");
            ((Pisang) x).tampilkanKulit();
        } else if (x instanceof Durian) {
            System.out.println("Durian dibelah terlebih dahulu");
            ((Durian) x).tampilkanDuri();
        }
        System.out.println("Rasanya " + x.rasa);
        System.out.println("Kandungan Air " + x.kandunganAir);
    }
}
