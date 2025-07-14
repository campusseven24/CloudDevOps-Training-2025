package constructor4;

public class ConstructorMain {

	public static void main(String[] args) {
		//1. 기본 생성자가 자동으로 제공되는 경우.
		System.out.println("1. SimpleAccount - 자동 기본 생성자 ");
		SimpleAccount simpleAccount = new SimpleAccount();
		simpleAccount.printInfo();	// 모든 값이 기본값 (null, 0)
		
		//2. 기본 생성자가 제공되지 않는 경우 
		System.out.println("\n2. CustomAccount - 매개변수 생성자만 존재 ");
		// CustomAccount custom = new CustomAccount();  //컴파일 에러
		CustomAccount customAccount = 
				new CustomAccount("custom-001", "신사임당", 25000);
		customAccount.printInfo();
		
		//3. 명시적으로 기본 생성자를 정의한 경우
		
		// 기본 생성자 사용
		
		// setAccountInfo()
		
		// 매개변수 생성자 사용 
		
	}
}
