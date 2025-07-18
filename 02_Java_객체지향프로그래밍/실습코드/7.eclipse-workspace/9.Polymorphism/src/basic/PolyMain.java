package basic;

public class PolyMain {

	public static void main(String[] args) {
		// 부모타입 변수가 부모 인스턴스 참조
		Parent parent = new Parent();
		parent.parentMethod();
		
		// 자식타입 변수가 자식 인스턴스 참조
		Child child = new Child();
		child.childMethod();
		child.parentMethod();
		
		// 부모타입 변수가 자식 인스턴스 참조 (다형적 참조)
		Parent poly = new Child();
		poly.parentMethod();
		//poly.childMethod();
		
		
	}
}




















