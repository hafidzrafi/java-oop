package experiments;

public class Laptop1 {
    private String merk;

    public Laptop1(String merk) {
        this.merk = merk;
    }

    public void cetakDokumen(Printer printer, String namaFile) {
        System.out.println(merk + " mengirim dokumen ke printer...");
        printer.cetak(namaFile);
    }
}
