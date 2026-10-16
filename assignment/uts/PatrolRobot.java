package assignment.uts;

public class PatrolRobot extends Robot {
    public Battery RobotBattery;

    public PatrolRobot(String name, int cpuspeed, int power, Battery battery) {
        this.RobotBattery = battery;
        this.Name = "PATROL<14>" +name;
        this.CPUSpeed = cpuspeed;
        this.Power = power;
    }

    @Override
    public void increasePower() {
        this.Power += 20;
    }
}
