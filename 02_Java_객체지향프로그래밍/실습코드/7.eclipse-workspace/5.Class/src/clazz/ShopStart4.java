package clazz;

public class ShopStart4 {

	public static void main(String[] args) {
		// 클래스를 사용하여 상품 객체 생성
		Product iphone = new Product();		// 새로운 상품 생성 (메모리 주소: 0x001)
		
		//아이폰 상품 정보 설정
		iphone.name = "아이폰 17";
		iphone.price = 1200000;
		iphone.stock = 50;
		iphone.category = "전자제품";
		
		// 신발 상품 생성과 변수 선언
		Product sneakers = new Product(); // 새로운 상품 생성 (메모리 주소: 0x002)
		
		// 신발 상품 정보 설정
		sneakers.name = "나이키 에어맥스";
		sneakers.price = 150000;
		sneakers.stock = 30;
		sneakers.category = "신발";
		
		// 상품 객체들을 배열로 관리 
		// 객체 배열을 사용하면 여러 상품을 체계적으로 관리가능함
		Product[] inventory = new Product[2];
		inventory[0] = iphone;		// 첫 번째 상품
		inventory[1] = sneakers;	// 두 번째 상품 
		
		
		
		
		// 배열을 통해 재고 상품 목록 출력
		// 
		System.out.println("=== 쇼핑몰 상품 정보(클래스 사용) ===");
		System.out.println("상품명 : " +inventory[0].name+ " | 가격: " 
							+inventory[0].price+ "원 | 제고: " 
							+inventory[0].stock+ "개 | 카테고리: " 
							+inventory[0].category);
		System.out.println("상품명 : " +inventory[1].name+ " | 가격: " 
				+inventory[1].price+ "원 | 제고: " 
				+inventory[1].stock+ "개 | 카테고리: " 
				+inventory[1].category);		
		
		System.out.println();
		System.out.println(inventory[0].name);
		System.out.println(inventory[1].name);
		
		
	}
}




















