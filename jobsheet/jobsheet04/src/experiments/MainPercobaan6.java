package experiments;

public class MainPercobaan6 {
    public static void main(String[] args) {
        Laptop1 laptop = new Laptop1("Thinkpad");
        Printer printer = new Printer("Epson L3110");
        laptop.cetakDokumen(printer, "Laporan.pdf");
    }
}