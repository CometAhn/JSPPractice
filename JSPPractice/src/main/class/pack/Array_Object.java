package pack;

import java.util.ArrayList;
import java.util.List;

public class Array_Object {

  public static void main(String[] args) {

    List<String> list = new ArrayList<String>();
    list.add("홍길동");
    list.add("이순신");
    printData(list);
    
    List<Integer> list2 = new ArrayList<Integer>();
    list2.add(100);
    list2.add(200);
    printData(list2);
    
  }

  private static void printData(List<?> list) {
    for(Object obj : list) {
      System.out.println(obj);
    }
    
  }

}
