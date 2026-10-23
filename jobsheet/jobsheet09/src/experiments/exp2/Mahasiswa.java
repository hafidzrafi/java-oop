package jobsheet.jobsheet09.src.experiments.exp2;

public class Mahasiswa {
    protected String nama;

    public Mahasiswa(String nama) {
        this.nama = nama;
    }

    public void kuliahDiKampus() {
        System.out.println("I am a student, my name is " + this.nama);
        System.out.println("I attend classes on campus.");
    }
}
