package jobsheet.jobsheet03.src.experiments;

public class Motor {
    private int kecepatan = 0;
    private boolean kontakOn = false;
    private int maxKecepatan = 100;

    public void nyalakanMesin() {
        kontakOn = true;
    }

    public void matikanMesin() {
        kontakOn = false;
        kecepatan = 0;
    }

    public void tambahKecepatan() {
        if (kontakOn && kecepatan < maxKecepatan) {
            kecepatan += 5;
        } else if (kontakOn && kecepatan >= maxKecepatan) {
            System.out.println("Kecepatan tidak bisa bertambah karena kecepatan sudah mencapai batas maksimal\n");
        } else {
            System.out.println("Kecepatan tidak bisa bertambah karena mesin off!!\n");
        }
    }

    public void kurangiKecepatan() {
        if (kontakOn && kecepatan > 0) {
            kecepatan -= 5;
        } else if (kontakOn && kecepatan <= 0) {
            System.out.println("Kecepatan tidak bisa berkurang karena kecepatan sudah mencapai batas minimal\n");
        } else {
            System.out.println("Kecepatan tidak bisa berkurang karena mesin off!!\n");
        }
    }

    public void printStatus() {
        if (kontakOn) {
            System.out.println("Kontak On");
        } else {
            System.out.println("Kontak Off");
        }
        System.out.println("Kecepatan : " + kecepatan + "\n");
    }
}
