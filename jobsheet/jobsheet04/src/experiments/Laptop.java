package experiments;

public class Laptop {
    private String merk;
    private Processor proc;

    public Laptop(String merk, Processor proc) {
        this.merk = merk;
        this.proc = proc;
    }

    public Laptop() {}

    public void setMerk(String merk) {
        this.merk = merk;
    }

    public String getMerk() {
        return merk;
    }

    public void setProc(Processor proc) {
        this.proc = proc;
    }

    public Processor getProc() {
        return proc;
    }

    public void info() {
        System.out.printf("Merk Laptop = %s\n", merk);
        proc.info();
    }
}
