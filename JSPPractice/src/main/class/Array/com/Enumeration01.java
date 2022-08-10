package Array.com;

import java.util.Vector;
import java.util.Enumeration;

class Person_Gener {

  String name;
  int age;

  public String getName() {
    return name;
  }

  public int getage() {
    return age;
  }

  public Person_Gener(String name, int age) {
    this.name = name;
    this.age = age;
  }
}


public class Enumeration01 {

  public static void main(String[] args) {

    Vector<Person_Gener> v = new Vector<Person_Gener>();
    v.add(new Person_Gener("홍길동", 20));
    v.add(new Person_Gener("이순신", 44));

    for (Person_Gener p : v) {
      String name = p.getName();
      int age = p.getage();
      System.out.println("for-each문 : " + name + " " + age);
    }

    Enumeration<Person_Gener> enu = v.elements();
    while (enu.hasMoreElements()) {
      Person_Gener p = enu.nextElement();
      String name = p.getName();
      int age = p.age;
      System.out.println("Enumeration 이용 : " + name + " " + age);
    }

  }

}
