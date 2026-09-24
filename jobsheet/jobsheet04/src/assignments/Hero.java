package assignments;

public class Hero {
    private String name;
    private int level;
    private int health;
    private int strength;
    private int defense;
    private int speed;

    public Hero(String name, int level, int health, int strength, int defense, int speed) {
        this.name = name;
        this.level = level;
        this.health = health;
        this.strength = strength;
        this.defense = defense;
        this.speed = speed;
    }

    public String getName() {
        return name;
    }

    public int getLevel() {
        return level;
    }

    public int getHealth() {
        return health;
    }

    public int getStrength() {
        return strength;
    }

    public int getDefense() {
        return defense;
    }

    public int getSpeed() {
        return speed;
    }

    public void attack() {
        System.out.println(name + " menyerang!");
    }

    public void usePotion(Potion potion) {
        this.health += potion.getHealAmount();
        System.out.println(name + " menggunakan " + potion.getName() + " (+" + potion.getHealAmount() + " HP). Total HP: " + this.health);
    }
}