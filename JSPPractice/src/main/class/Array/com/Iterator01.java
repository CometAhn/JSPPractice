package Array.com;

import java.util.ArrayList;
import java.util.Iterator;

class Child {

  String name;
  int age;

  public String getName() {
    return name;
  }

  public int getage() {
    return age;
  }

  public Child(String name, int age) {
    this.name = name;
    this.age = age;
  }
}


public class Iterator01 {

  public static void main(String[] args) {
    ArrayList<Child> list = new ArrayList<Child>();
    list.add(new Child("홍길동", 11));
    list.add(new Child("이순신", 12));

    Iterator<Child> ite = list.iterator();
    while (ite.hasNext()) {
      Child c = ite.next();
      String name = c.getName();
      int age = c.getage();
      System.out.println("Iterator 이용 : " + name + " " + age);
    }
  }

}
