package string;

public class StringDemo3 {

	public static void main(String[] args) {
		String javaStr = new String("java");
		System.out.println("javaStr 주솟값 : " + System.identityHashCode(javaStr));
		
		StringBuilder buffer = new StringBuilder(javaStr);
		System.out.println(buffer);
		System.out.println("buffer 주솟값 : " + System.identityHashCode(buffer));
		
		//문자열 추가
		buffer.append(" and");
		buffer.append(" android");
		buffer.append(" kotlin programming!!");
		System.out.println(buffer);
		System.out.println("buffer 주솟값2 : " + System.identityHashCode(buffer));
		
		
	}
}
