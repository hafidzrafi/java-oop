package assignment;

public class Generator {

    private int daya;
    private int voltase;
    public Generator(int daya, int voltase) {
        this.daya = daya;
        this.voltase = voltase;
    }

    public int getDaya() {
        return daya;
    }

    public int getVoltase() {
        return voltase;
    }

    public void setDaya(int daya) {
        this.daya = daya;
    }

    public void setVoltase(int voltase) {
        this.voltase = voltase;
    }
}