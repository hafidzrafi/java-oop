package jobsheet.jobsheet01.tugas;

public class Botol {
    int volumeAir = 600;
    int kapasitas = 750;

    void minum(int jumlahMinum) {
        if (jumlahMinum > volumeAir) {
            System.out.println("Air tidak cukup untuk diminum sebanyak " + jumlahMinum + " ml.");
            volumeAir = 0;
        } else {
            volumeAir -= jumlahMinum;
            System.out.println("Minum " + jumlahMinum + " ml air. Sisa air: " + volumeAir + " ml.");
        }
    }

    void isiUlang(int tambahAir) {
        volumeAir += tambahAir;
        if (volumeAir > kapasitas) {
            volumeAir = kapasitas;
            System.out.println("Botol telah terisi penuh hingga kapasitas " + kapasitas + " ml.");
        } else {
            System.out.println("Mengisi ulang botol sebanyak " + tambahAir + " ml. Volume air: " + volumeAir + " ml.");
        }
    }

    void info() {
        System.out.println("Kapasitas : " + kapasitas + " ml");
        System.out.println("Volume Air: " + volumeAir + " ml");
    }
}
