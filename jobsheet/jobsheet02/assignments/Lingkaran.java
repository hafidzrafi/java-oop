package jobsheet.jobsheet02.assignments;

public class Lingkaran {
    public double phi = Math.PI;
    public double r;

    public double hitungLuas() {
        return phi * r * r;
    }

    public double hitungKeliling() {
        return phi * 2 * r;
    }

    public void tampilkan() {
        System.out.println("Jari-Jari Lingkaran     : " + r);
        System.out.println("Phi                     : " + phi);
        System.out.println("Luas Lingkaran          : " + hitungLuas());
        System.out.println("Keliling Lingkaran      : " + hitungKeliling());
    }
}
