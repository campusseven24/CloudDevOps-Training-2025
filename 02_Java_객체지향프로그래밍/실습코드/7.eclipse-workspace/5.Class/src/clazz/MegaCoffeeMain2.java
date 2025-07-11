package clazz;

/*
 * 메가 커피 메뉴 관리 - 배열을 이용한 여러 메뉴 관리하기 
 * 	- 배열과 향상된 for문 사용하기
 */
public class MegaCoffeeMain2 {

	public static void main(String[] args) {
		// 메뉴 아이템들을 저장할 배열 생성(3개 메뉴)
		MegaCoffeeItem[] menuItems = new MegaCoffeeItem[3];
		
		// 첫번째 메뉴 - 클래식 커피
		MegaCoffeeItem americano = new MegaCoffeeItem();
		americano.name = "아메리카노";
		americano.price = 4500;
		americano.category = "커피";
		americano.isHot = true;
		menuItems[0] = americano; //배열의 첫번째 위치에 저장
		
		// 두번째 메뉴 - 카페라떼
		MegaCoffeeItem cheeseCake = new MegaCoffeeItem();
		cheeseCake.name = "카페라떼";
		cheeseCake.price = 5500;
		cheeseCake.category = "커피";
		cheeseCake.isHot = true;	
		menuItems[1] = cheeseCake; //배열의 두번째 위치에 저장
		
		// 세번째 메뉴 - 딸기 에이드
		MegaCoffeeItem strawberryAde = new MegaCoffeeItem();
		strawberryAde.name = "딸기 에이드";
		strawberryAde.price = 6000;
		strawberryAde.category = "음료";
		strawberryAde.isHot = false;
		menuItems[2] = strawberryAde; //배열의 두번째 위치에 저장
		
		// 메뉴 출력 
		System.out.println("=== ☕ 메가 커피 전체 메뉴 ===");
		for (MegaCoffeeItem menu : menuItems) {
			System.out.println("메뉴: " +menu.name+ 
					" | 가격: " +menu.price+ "원" +
					" | 분류: " +menu.category+
					" | 온도: " +(menu.isHot ? "HOT 🔥" : "COLD ❄️"));		
		}
		
	}
}





















