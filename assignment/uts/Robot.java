package assignment.uts;

public class Robot {
    public String Name;
    public int CPUSpeed;
    public int Power;

    public void increasePower() {
        this.Power += 10;
    }

    public void reducePower() {
        this.Power -= 10;
    }
}
