package encap;

public class EncapsulationTest {

	public static void main(String[] args) {
		//은행 계좌
		System.out.println("=== 은행 계좌 테스트 ===");
		BankAccount account = new BankAccount("123-456-789", "이순신");
		account.depot(10000);
		account.withdraw(3000);
		account.withdraw(8000);
		account.printAccountInfo();
		
		System.out.println("\n=== 게임 캐릭터 테스트 ===");
		System.out.println("---올바른 캐릭터명 테스트 ---");
		
		GameCharacter character = new GameCharacter("TestUser01");
		character.takeDamage(30);
		character.heal(20);
		character.levelUp();
		character.printCharacterInfo();
	}
}













