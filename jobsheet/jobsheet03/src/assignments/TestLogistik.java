package jobsheet.jobsheet03.src.assignments;

import java.util.Scanner;

public class TestLogistik {
    public static void main(String[] args) {
        Kontainer kontainerAlfa = new Kontainer("REQ-9988", "PT. Maju Bersama", 5000);

        System.out.println("Nama Pemilik Kontainer: " + kontainerAlfa.getNamaPemilik());
        System.out.println("Kapasitas Maksimal: " + kontainerAlfa.getKapasitasMaksimal() + " kg");
        
        Scanner input = new Scanner(System.in);
        while (true) {
            System.out.println("\n== Pilihan Aksi ==\n1. Tambah Muatan\n2. Turunkan Muatan\n3. Keluar");
            System.out.print("Pilih aksi: ");
            int pilihan = input.nextInt(); input.nextLine();

            if (pilihan == 1) {
                System.out.print("Masukkan jumlah muatan: ");
                float jumlah = input.nextFloat(); input.nextLine();
                kontainerAlfa.tambahMuatan(jumlah);
                System.out.println("Berat muatan saat ini: " + kontainerAlfa.getBeratMuatanSaatIni() + " kg");
            } else if (pilihan == 2) {
                System.out.print("Masukkan jumlah muatan yang akan dibongkar: ");
                float jumlah = input.nextFloat(); input.nextLine();
                kontainerAlfa.turunMuatan(jumlah);
                System.out.println("Berat muatan saat ini: " + kontainerAlfa.getBeratMuatanSaatIni() + " kg");
            } else if (pilihan == 3) {
                break;
            } else {
                System.out.println("Pilihan tidak valid.");
            }
        }
        input.close();
    }
}
