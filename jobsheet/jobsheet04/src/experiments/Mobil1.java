package experiments;

public class Mobil1 {
    private String merek;
    private Mesin mesin;
    
    public Mobil1(String merek) {
        this.merek = merek;
        this.mesin = new Mesin();
    }

    public void tampilkanInfo() {
        System.out.println("Mobil: " + this.merek);
        System.out.println("Mesin: " + this.mesin.getTipe());
    }
}
