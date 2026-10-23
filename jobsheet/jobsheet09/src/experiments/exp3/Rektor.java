package jobsheet.jobsheet09.src.experiments.exp3;

public class Rektor {
    public void beriSertifikatCumlaude(ICumlaude mahasiswaCumlaude) {
        System.out.println("I am the RECTOR, granting a cum laude award.");
        System.out.println("Congratulations! Please introduce yourself..");
        mahasiswaCumlaude.lulus();
        mahasiswaCumlaude.meraihIPKTinggi();
        System.out.println("----------------------------------------");
    }

    public void beriSertifikatMawapres(IBerprestasi mahasiswaBerprestasi) {
        System.out.println("I am the RECTOR, granting a MAWAPRES award.");
        System.out.println("Congratulations! How did you achieve this?");
        mahasiswaBerprestasi.menjuaraiKompetisi();
        mahasiswaBerprestasi.membuatPublikasiIlmiah();
        System.out.println("----------------------------------------");
    }
}
