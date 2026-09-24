package assignments;

public class Item {
    private String name;
    private int strengthBonus;
    private int defenseBonus;

    public Item(String name, int strengthBonus, int defenseBonus) {
        this.name = name;
        this.strengthBonus = strengthBonus;
        this.defenseBonus = defenseBonus;
    }

    public String getName() {
        return name;
    }

    public int getStrengthBonus() {
        return strengthBonus;
    }

    public int getDefenseBonus() {
        return defenseBonus;
    }
}