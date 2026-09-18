package jobsheet.jobsheet03.src.assignments;

public class Kontainer {
    private String nomorResi;
    private String namaPemilik;
    private float kapasitasMaksimal;
    private float beratMuatanSaatIni = 0;
    
    public Kontainer(String nomorResi, String namaPemilik, float kapasitasMaksimal) {
        this.nomorResi = nomorResi;
        this.namaPemilik = namaPemilik;
        this.kapasitasMaksimal = kapasitasMaksimal;
    }

    public String getNomorResi() {
        return nomorResi;
    }
    
    public String getNamaPemilik() {
        return namaPemilik;
    }

    public float getKapasitasMaksimal() {
        return kapasitasMaksimal;
    }

    public float getBeratMuatanSaatIni() {
        return beratMuatanSaatIni;
    }

    public void tambahMuatan(float jumlah) {
        if (beratMuatanSaatIni+jumlah <= kapasitasMaksimal) {
            beratMuatanSaatIni += jumlah;
        } else {
            System.out.println("Maaf, berat muatan melebihi kapasitas maksimal kontainer.");
        }
    }

    public void turunMuatan(float jumlah) {
        if (jumlah > beratMuatanSaatIni/2) {
            System.out.println("Maaf, demi keselamatan, pembongkaran muatan satu kali jalan tidak boleh melebihi 50% dari muatan saat ini!");
        } else {
            if (beratMuatanSaatIni-jumlah >= 0) {
                beratMuatanSaatIni -= jumlah;
            } else {
                System.out.println("Jumlah yang diturunkan melebihi jumlah yang ada.");
            }
        }
    }
}
