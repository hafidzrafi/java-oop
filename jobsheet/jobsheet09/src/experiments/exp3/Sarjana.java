package jobsheet.jobsheet09.src.experiments.exp3;

public class Sarjana extends Mahasiswa implements ICumlaude, IBerprestasi {
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

    @Override
    public void menjuaraiKompetisi() {
        System.out.println("I have won a NATIONAL competition");
    }

    @Override
    public void membuatPublikasiIlmiah() {
        System.out.println("I have published in a NATIONAL journal");
    }
}
