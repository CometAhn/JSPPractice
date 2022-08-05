package Array.com;
import java.util.ArrayList;

public class Person_01 {

  public static void main(String[] args) {
    
    PersonTest t = new PersonTest();

    ArrayList list = t.getAllPerson();
    
    for(int i = 0;i< list.size();i++) {
      Person_DTO p = (Person_DTO)list.get(i);
      String name = p.getName();
      int age= p.getAge();
      String address = p.getAddress();
      System.out.println(name + " " + age + " " + address);
    }
  }

}
