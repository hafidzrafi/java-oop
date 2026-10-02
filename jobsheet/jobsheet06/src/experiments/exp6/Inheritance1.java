package jobsheet.jobsheet06.src.experiments.exp6;

public class Inheritance1 {
    public static void main(String[] args) {
        StaffTetap st = new StaffTetap("Budi", "Malang", "Lakilaki", 20, 2000000, 200000, 250000, "2A", 100000);
        st.tampilStaffTetap();

        StaffHarian sh = new StaffHarian("Indah", "Malang", "Perempuan", 27, 10000, 100000, 50000, 100);
        sh.tampilStaffHarian();
    }
}
