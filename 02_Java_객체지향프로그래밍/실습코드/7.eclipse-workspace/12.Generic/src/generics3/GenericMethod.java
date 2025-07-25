package generics3;

public class GenericMethod {

	public static <T,V> double makeRectangleArea(Pointer<T,V> p1, Pointer<T,V> p2) {
		
		double left = ((Number)p1.getX()).doubleValue();
		double right = ((Number)p2.getX()).doubleValue();
		double top = ((Number)p1.getY()).doubleValue();
		double bottom = ((Number)p2.getY()).doubleValue();
		
		double width = right - left;
		double height = bottom - top;
				
		return width * height;
	}
	
	public static void main(String[] args) {
		Pointer<Integer, Double> p1 = new Pointer<>(0, 0.0);
		Pointer<Integer, Double> p2 = new Pointer<>(10, 10.0);
		
		double rect = 
				GenericMethod.<Integer, Double>makeRectangleArea(p1, p2);
		System.out.println("두 점으로 만들어진 사각형의 넓이는 " +rect+ "입니다.");
		
	}
}




















