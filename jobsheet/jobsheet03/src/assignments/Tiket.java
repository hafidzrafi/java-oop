package jobsheet.jobsheet03.src.assignments;

public class Tiket {
    private String judulFilm;
    private Double hargaDasar;
    private boolean statusPembayaran;

    public Tiket(String judulFilm, Double hargaDasar) {
        this.judulFilm = judulFilm;
        if (hargaDasar < 0) {
            this.hargaDasar = 35000.0;
        } else {
            this.hargaDasar = hargaDasar;
        }
        this.statusPembayaran = false;
    }

    public void lakukanPembayaran() {
        this.statusPembayaran = true;
    }

    public boolean isStatusPembayaran() {
        return statusPembayaran;
    }

    public Double getHargaDasar() {
        return hargaDasar;
    }

    public String getJudulFilm() {
        return judulFilm;
    }
    
}
