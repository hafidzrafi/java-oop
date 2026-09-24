package assignments;

public class Potion {
    private String name;
    private int healAmount;

    public Potion(String name, int healAmount) {
        this.name = name;
        this.healAmount = healAmount;
    }

    public String getName() {
        return name;
    }

    public int getHealAmount() {
        return healAmount;
    }
}
