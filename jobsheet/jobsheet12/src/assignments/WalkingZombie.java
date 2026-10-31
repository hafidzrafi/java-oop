package jobsheet.jobsheet12.src.assignments;

public class WalkingZombie extends Zombie {
    public WalkingZombie(int health, int level) {
        super(health, level);
    }

    @Override
    public void heal() {
        if (health >= 100) {return;}

        if (this.level == 1) {
            this.health += (int) (this.health * 0.1);
        } else if (this.level == 2) {
            this.health += (int) (this.health * 0.3);
        } else if (this.level == 3) {
            this.health += (int) (this.health * 0.4);
        }
    }

    @Override
    public void destroyed() {
        if (this.health <= 0) {
            return;
        }
        this.health -= (int) (this.health * 0.2);
    }
    
    @Override
    public String getZombieInfo() {
        return "Walking Zombie Data = \nHealth = " + this.health + "\nLevel = " + this.level + "\n";
    }
}
