package Array.com;

import java.util.Arrays;

public class Array09 {

  public static void main(String[] args) {

    int test1[] = {1, 2, 3, 4, 5, 6};
    int test2[] = {10,9,8,7,6,5,4,3,2,1};

    System.arraycopy(test1, 0, test2, 0, test1.length);
    for(int i : test2) {
      System.out.println(i);
    }

  }

}
