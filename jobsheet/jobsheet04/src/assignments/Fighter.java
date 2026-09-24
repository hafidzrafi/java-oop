package assignments;

public class Fighter extends Hero {
    // 1. Composition: Weapon dibuat secara internal dan eksklusif di constructor
    private Weapon weapon;
    // 2. Aggregation: Item dibuat mandiri di luar kelas dan disuntikkan
    private Item item;

    public Fighter(String name, int level, int health, int strength, int defense, int speed, String weaponName, int power, Item item) {
        super(name, level, health, strength, defense, speed);
        // Composition: instansiasi internal, lifecycle Weapon terikat mati dengan Fighter
        this.weapon = new Weapon(weaponName, power);
        // Aggregation: referensi objek Item disuntikkan dari luar
        this.item = item;
    }

    public Fighter(String name, int level, int health, int strength, int defense, int speed, String weaponName, int power) {
        this(name, level, health, strength, defense, speed, weaponName, power, null);
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Item getItem() {
        return item;
    }

    public Weapon getWeapon() {
        return weapon;
    }

    @Override
    public void attack() {
        int bonusStr = (item != null) ? item.getStrengthBonus() : 0;
        int totalDamage = getStrength() + bonusStr + weapon.getPower();
        System.out.println(getName() + " menyerang dengan " + weapon.getName() + " (Total Damage: " + totalDamage + ")!");
    }

    public void info() {
        System.out.println("=== Status Fighter ===");
        System.out.println("Nama     : " + getName() + " (Level " + getLevel() + ")");
        System.out.println("HP       : " + getHealth());
        System.out.println("Weapon   : " + weapon.getName() + " [Power: " + weapon.getPower() + "] -> (Composition)");
        if (item != null) {
            System.out.println("Item     : " + item.getName() + " [Bonus STR: +" + item.getStrengthBonus() + ", DEF: +" + item.getDefenseBonus() + "] -> (Aggregation)");
        } else {
            System.out.println("Item     : (Tidak ada)");
        }
    }
}