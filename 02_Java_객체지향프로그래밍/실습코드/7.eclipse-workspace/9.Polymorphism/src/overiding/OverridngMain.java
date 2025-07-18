package overiding;

public class OverridngMain {

	public static void main(String[] args) {
		
		// 자식 변수가 자식 인스턴스 참조
		Child child = new Child();
		child.method();
		
		// 부모 변수가 부모 인스턴스 참조 
		Parent parent = new Parent();
		parent.method();
		
		// 다형적 참조 (부모 변수가 자식 인스턴스 참조)
		Parent poly = new Child();
		System.out.println("value = " + poly.value); //변수는 오버리이딩 X 
		poly.method();		// 메서드 오버라이딩
	}
}








