package jobsheet.jobsheet03.src.assignments;

public class EncapTest {
    public static void main(String[] args) {
        EncapDemo encap = new EncapDemo();
        encap.setName("james");
        encap.setAge(35);

        System.out.println("Name    : " + encap.getName());
        System.out.println("Age     : " + encap.getAge());
    }
}
