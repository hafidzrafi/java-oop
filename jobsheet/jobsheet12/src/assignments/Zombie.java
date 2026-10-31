package jobsheet.jobsheet12.src.assignments;

public abstract class Zombie implements Destroyable {
    protected int health;
    protected int level;

    public Zombie(int health, int level) {
        this.health = health;
        this.level = level;
    }
    public abstract void heal();
    public abstract void destroyed();
    public abstract String getZombieInfo();
}
