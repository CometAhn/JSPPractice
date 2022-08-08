package Array.com;

import java.util.ArrayList;


public class PersonTest {

  public ArrayList getAllPerson() {
    ArrayList list = new ArrayList();

    list.add(new Person_DTO("홍길동", 20, "숼"));
    list.add(new Person_DTO("이순신", 20, "전라"));
    list.add(new Person_DTO("유관순", 20, "경기"));
    return list;


  }

}
