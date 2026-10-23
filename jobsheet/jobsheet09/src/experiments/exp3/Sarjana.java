package jobsheet.jobsheet09.src.experiments.exp3;

public class Sarjana extends Mahasiswa implements ICumlaude {
    public Sarjana(String nama) {
        super(nama);
    }

    @Override
    public void lulus() {
        System.out.println("I have completed my UNDERGRADUATE THESIS");
    }

    @Override
    public void meraihIPKTinggi() {
        System.out.println("My GPA is above 3.51");
    }
}
