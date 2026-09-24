package experiments;

public class Laptop1 {
    private String merk;
    private Printer printer;

    public Laptop1(String merk, Printer printer) {
        this.merk = merk;
        this.printer = printer;
    }

    public void cetakDokumen(String namaFile) {
        System.out.println(merk + " mengirim dokumen ke printer...");
        this.printer.cetak(namaFile);
    }
}
