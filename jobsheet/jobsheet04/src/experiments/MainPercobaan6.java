package experiments;

public class MainPercobaan6 {
    public static void main(String[] args) {
        Printer printer = new Printer("Epson L3110");
        Laptop1 laptop = new Laptop1("Thinkpad", printer);
        laptop.cetakDokumen("Laporan.pdf");
    }
}