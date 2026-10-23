package jobsheet.jobsheet09.src.assignments;

public class Keledai extends Binatang implements IHerbivora {
    private String suara;
    private String warnaBulu;

    public Keledai(String nama, int jmlKaki, String suara, String warnaBulu) {
        super(nama, jmlKaki);
        this.suara = suara;
        this.warnaBulu = warnaBulu;
    }

    @Override
    public void displayMakan() {
        System.out.println("Type: Herbivore");
        System.out.println("Food: Plants");
    }

    @Override
    public void displayBinatang() {
        System.out.println("Name: " + this.nama);
        System.out.println("Number of Legs: " + this.jmlKaki);
        System.out.println("Sound: " + this.suara);
        System.out.println("Fur Colour: " + this.warnaBulu);
    }

    public void displayData() {
        this.displayMakan();
        this.displayBinatang();
        System.out.println();
    }
}
