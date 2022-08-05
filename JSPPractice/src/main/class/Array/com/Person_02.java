package Array.com;

import java.util.ArrayList;

class Man {
  String name;
  int age;

  public String getName() {
    return name;
  }

  public int getAge() {
    return age;
  }

  public Man(String name, int age) {
    this.name = name;
    this.age = age;
  }
}


public class Person_02 {

  public static void main(String[] args) {


    ArrayList<Man> list = new ArrayList<Man>();
    list.add(new Man("홍길동", 20));
    list.add(new Man("이순신", 44));

    for (int i = 0; i < list.size(); i++) {
      Man p = list.get(i);
      String name = p.getName();
      int age = p.getAge();
      System.out.println(name + " " + age);
    }

    for (Man man : list) {
      String name = man.getName();
      int age = man.getAge();
      System.out.println("향상된 for문 : " + name + " " + age);
    }
  }

}
