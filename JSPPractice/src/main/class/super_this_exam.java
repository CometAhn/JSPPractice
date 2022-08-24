

class a{
	int a = 10;

}

class b extends a{
	int a=5;
	
	void test(int a) {
		System.out.println(super.a);
		System.out.println(this.a);
		System.out.println(a);
	}
}
public class super_this_exam {
	
	public static void main(String[] args) {
		b  c = new b();
		c.test(2);
	}
}
