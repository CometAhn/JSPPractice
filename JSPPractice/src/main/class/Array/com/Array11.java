package Array.com;

import java.util.ArrayList;

public class Array11 {

  public static void main(String[] args) {

    ArrayList list = new ArrayList();

    list.add("홍길동");
    list.add(new Integer(123));
    list.add(new Float(3.14f));
    list.add(234);

    list.add("홍길동");
    list.add(new Integer(123));
    list.add(new Float(3.14f));
    list.add(234);

    System.out.println("데이터 출력 : " + list.toString()); // list는 중복값을 허용하고 순서대로 저장된다.


    ArrayList list1 = new ArrayList();

    list1.add("A");
    list1.add("C");
    list1.add("B");
    list1.add("D");
    System.out.println("초기 상태 : ");
    System.out.println(list1);
    
    System.out.println("인덱스 1 위치에 B 추가.");
    list1.add(1, "B");
    System.out.println(list1);
    
    System.out.println("인덱스 2 위치의 값 삭제.");
    list1.remove(2);
    System.out.println(list1);
    
    System.out.println("인덱스 2 위치의 값 반환 : " + list1.get(2));
  }

}
