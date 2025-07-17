package encap;
/*
 * * 캡슐화 : 데이터 은닉(private), 메서드 제공(public), 유효성 검증
 * * 접근 제한자 이해 - 멤버변수, 메서드 
 * 
 * 1) 은행 계좌 관리 시스템
 * 	- 모든 필드는 외부에서 직접 접근 불가능
 * 	- 출금 시에 잔액 부족 검증
 * 	- 입금 시 음수 방지
 * 
 */
public class BankAccount {
	// 계좌번호, 예금주명, 잔액 필드 
	private String accountNumber;
	private String accountHolder;
	private double balance;
	
	public BankAccount(String accountNumber, String accountHolder) {
		//super();
		this.accountNumber = accountNumber;
		this.accountHolder = accountHolder;
		this.balance = 0.0;			// 초기 잔액 0으로 설정
	}
	
	// 입금 메서드 (유효성 검증 포함)
	public boolean depot(double amount) {
		//음수 또는 0 입금 방지
		if(amount <= 0) {
			System.out.println("입금액은 0보다 커야 합니다.");
			return false;
		}
		 balance += amount;		// 잔액에 입금액 추가
		 System.out.println(amount +"원이 입금되었습니다. 현재 잔액: "+ balance +"원");
		 return true;
	}
	
	// 출금 메서드 (유효성 검증 포함)
	public boolean withdraw(double amount) {
		// 음수 또는 0 출금 방지
		if(amount <= 0) {
			System.out.println("출금액은 0보다 커야 합니다.");
			return false;
		}
		
		// 잔액 부족 검증
		if(balance < amount) {
			System.out.println("잔액이 부족합니다. 현재 잔액: " +balance+ "원");
			return false;
		}
		
		balance -= amount;
		System.out.println(amount +"원이 출금되었습니다. 현재 잔액: " +balance+ "원");
		return true;
		
	}
	// 잔액 조회 메서드 (읽기 전용)
	public double getBalance() {
		return balance;
	}
	
	// 계좌 번호 조회 메서드 (읽기 전용)
	public String getAccountNumber() {
		return accountNumber;
	}	
	
	// 계좌 정보 조회 메서드 
	public void printAccountInfo() {
		System.out.println("=== 계좌 정보 ===");
		System.out.println("계좌 번호: " + accountNumber);
		System.out.println("예금주: " + accountHolder);
		System.out.println("잔액: " + balance + "원");
	}


}


























