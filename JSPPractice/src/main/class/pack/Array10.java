package pack;
import java.util.HashSet;
public class Array10 {

  public static void main(String[] args) {
    HashSet set = new HashSet();
        
        set.add("홍길동");
        set.add(new Integer(123));
        set.add(new Float(3.14f));
        set.add(234);
        
        set.add("홍길동");
        set.add(new Integer(123));
        set.add(new Float(3.14f));
        set.add(234);
        
        System.out.println("데이터 출력 : " + set.toString()); // set은 중복값을 허용하지 않고 저장되는 순서가 없다.
  }

}
