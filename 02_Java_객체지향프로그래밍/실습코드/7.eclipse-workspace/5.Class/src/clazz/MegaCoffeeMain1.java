package clazz;

/*
 * 메가 커피 관리 - 기본 객체 생성과 사용
 */

public class MegaCoffeeMain1 {

	public static void main(String[] args) {
		// 첫 번째 메뉴 아이템 객체 - 아메리카노
		MegaCoffeeItem americano = new MegaCoffeeItem();
		americano.name = "아메리카노";
		americano.price = 4500;
		americano.category = "커피";
		americano.isHot = true;
		
		// 두 번째 메뉴 아이템 객체 - 디지털 
		MegaCoffeeItem cheeseCake = new MegaCoffeeItem();
		cheeseCake.name = "뉴욕 치즈케이크";
		cheeseCake.price = 6800;
		cheeseCake.category = "디저트";
		cheeseCake.isHot = false;	
		
		// 메뉴 출력 
		System.out.println("=== ☕ 메가 커피 인기 메뉴 ===");
		System.out.println("메뉴: " +americano.name+ 
							" | 가격: " +americano.price+ "원" +
							" | 분류: " +americano.category+
							" | 온도: " +(americano.isHot ? "HOT" : "COLD"));
	System.out.println("메뉴: " +cheeseCake.name+ 
						" | 가격: " +cheeseCake.price+ "원" +
						" | 분류: " +cheeseCake.category+
						" | 온도: " +(cheeseCake.isHot ? "HOT" : "COLD"));		
	}
}























