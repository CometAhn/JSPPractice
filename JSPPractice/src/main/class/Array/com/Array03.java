package Array.com;

public class Array03 {

  public static void main(String[] args) {
    int[] num;
    num = new int[4];

    num[0] = 1;
    num[1] = 2;
    num[2] = 3;
    num[3] = 4;

    for (int x : num) {
      System.out.println("정수 배열 값" + x);
    }



    String[] name = {"가", "나", "다", "라"};

    for (String s : name) {
      System.out.println("정수 배열 값" + s);
    }

  }

}
