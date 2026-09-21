package experiments;

public class Mobil {
    private String merek;
    private int biaya;

    public Mobil() {}

    public void setMerek(String merek) {
        this.merek = merek;
    }

    public String getMerek() {
        return merek;
    }

    public void setBiaya(int biaya) {
        this.biaya = biaya;
    }

    public int getBiaya() {
        return biaya;
    }

    public int hitungBiayaMobil(int hari) {
        return biaya * hari;
    }
}
