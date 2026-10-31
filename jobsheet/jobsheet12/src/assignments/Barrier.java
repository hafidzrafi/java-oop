package jobsheet.jobsheet12.src.assignments;

public class Barrier implements Destroyable {
    private int strength;

    public Barrier(int strength) {
        this.strength = strength;
    }

    public int getStrength() {
        return strength;
    }

    public void setStrength(int strength) {
        this.strength = strength;
    }

    @Override
    public void destroyed() {
        this.strength -= 9;
    }

    public String getBarrierInfo() {
        return "Barrier Strength = " + this.strength;
    }
}
