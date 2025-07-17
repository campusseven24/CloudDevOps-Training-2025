package access;

public class BankAcessMain {

	public static void main(String[] args) {
		BankAcess access = new BankAcess();
		access.deposit(10000);
		access.withdraw(3000);
		access.withdraw(3000);
		access.withdraw(5000);
		System.out.println("잔액 = " + access.getBalance());
	}
}
