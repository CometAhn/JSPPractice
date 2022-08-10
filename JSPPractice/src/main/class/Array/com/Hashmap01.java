package Array.com;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.Set;

public class Hashmap01 {

  public static void main(String[] args) {
    HashMap<String, String> map = new HashMap<String, String>();
    map.put("name", "홍길동");
    map.put("age", "20");
    map.put("address", "서울");
    map.put("name", "이순신");
    map.put("email", null);
    map.remove("age");

    System.out.println("이름은 : " + map.get("name"));
    System.out.println("나이는 : " + map.get("age"));
    System.out.println("주소는 : " + map.get("address"));
    System.out.println("Email은 : " + map.get("email"));

    // keySet() 메소드를 이용한 데이터 출력
    Set<String> keys = map.keySet();
    for (String key : keys) {
      System.out.println(key + " = " + map.get(key));
    }
  }

}
