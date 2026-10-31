package jobsheet.jobsheet12.src.assignments;

public class JumpingZombie extends Zombie {

    public JumpingZombie(int health, int level) {
        super(health, level);
    }
    
    @Override
    public void heal() {
        
        if (this.health >= 100) {return;}

        if (this.level == 1) {
            this.health += (int) (this.health * 0.3);
        } else if (this.level == 2) {
            this.health += (int) (this.health * 0.4);
        } else if (this.level == 3) {
            this.health += (int) (this.health * 0.5);
        }
    }

    @Override
    public void destroyed() {
        if (this.health <= 0) {return;}
        this.health -= (int) (this.health * 0.1);
    }
    
    @Override
    public String getZombieInfo() {
        return "Jumping Zombie Data = \nHealth = " + this.health + "\nLevel = " + this.level + "\n";
    }
}
