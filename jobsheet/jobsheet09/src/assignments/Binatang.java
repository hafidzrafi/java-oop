package jobsheet.jobsheet09.src.assignments;

public abstract class Binatang {
    protected String nama;
    protected int jmlKaki;

    public Binatang(String nama, int jmlKaki) {
        this.nama = nama;
        this.jmlKaki = jmlKaki;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getNama() {
        return this.nama;
    }

    public void setKaki(int jmlKaki) {
        this.jmlKaki = jmlKaki;
    }

    public int getKaki() {
        return this.jmlKaki;
    }

    public void displayBinatang() {
        System.out.println("Name: " + this.nama);
        System.out.println("Number of Legs: " + this.jmlKaki);
    }
}
