package Array.com;
import java.util.ArrayList;
public class Array12 {

  public static void main(String[] args) {
    ArrayList list2 = new ArrayList();
    
    list2.add("홍길동");
    list2.add("이순신");
    list2.add("강감찬");
    list2.add("유관순");
    
    list2.add(1,"정도전");
    list2.set(0,"임꺽정");
    
    list2.remove(4);
    
    list2.remove("이순신");
    
    System.out.println(list2);
  
  }

}
