package assignment.uts;

public class Main {
    public static void main(String[] args) {
        Battery batt = new Battery();
        PatrolRobot pr = new PatrolRobot("ASIMO", 2048, 150, new Battery(16000));

        pr.increasePower();

        System.out.println("Name: " + pr.Name);
        System.out.println("CPUSpeed: " + pr.CPUSpeed);
        System.out.println("Power: " + pr.Power);

        System.out.println("Battery: " + pr.RobotBattery.Capacity);
    }
}
