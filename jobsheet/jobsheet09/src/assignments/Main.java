package jobsheet.jobsheet09.src.assignments;

public class Main {
    public static void main(String[] args) {
        Keledai keledai = new Keledai("Keledai", 4, "Hehehehe", "Grey");
        Gorilla gorilla = new Gorilla("Gulali", 4, "Haaum Hauum", "Black");
        Singa singa = new Singa("CingaCing", 4, "Roaar Roaaar", "Brown");

        keledai.displayData();
        gorilla.displayData();
        singa.displayData();
    }
}
