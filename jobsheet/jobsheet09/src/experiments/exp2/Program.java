package jobsheet.jobsheet09.src.experiments.exp2;

public class Program {
    public static void main(String[] args) {
        Rektor pakRektor = new Rektor();
        Mahasiswa mhsBiasa = new Mahasiswa("Charlie");
        Sarjana sarjanaCumlaude = new Sarjana("Dini");
        PascaSarjana masterCumlaude = new PascaSarjana("Elok");

        // Baris berikut menyebabkan compile error karena Mahasiswa tidak mengimplementasikan ICumlaude:
        // pakRektor.beriSertifikatCumlaude(mhsBiasa);

        pakRektor.beriSertifikatCumlaude(sarjanaCumlaude);
        pakRektor.beriSertifikatCumlaude(masterCumlaude);
    }
}
