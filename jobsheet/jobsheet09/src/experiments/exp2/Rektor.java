package jobsheet.jobsheet09.src.experiments.exp2;

public class Rektor {
    public void beriSertifikatCumlaude(ICumlaude mahasiswaCumlaude) {
        System.out.println("I am the RECTOR, granting a cum laude award.");
        System.out.println("Congratulations! Please introduce yourself..");
        mahasiswaCumlaude.lulus();
        mahasiswaCumlaude.meraihIPKTinggi();
        System.out.println("----------------------------------------");
    }
}
