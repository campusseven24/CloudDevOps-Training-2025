package variable;

public class Var6 {

	public static void main(String[] args) {
		// 정수 변수 선언 및 초기화
		int number1 = 10;
		int number2 = 3;
		
		System.out.println("=== 간단한 계산기 ===");
		System.out.println("숫자 1: " + number1);
		System.out.println("숫자 2: " + number2);
		System.out.println();
		
		int addition = number1 + number2;
		System.out.println("덧셈: " +number1+ " + " +number2+ " = " + addition);
		int substraction = number1 - number2;
		System.out.println("뺄셈: " +number1+ " - " +number2+ " = " + substraction);
		int multiplication = number1 * number2;
		System.out.println("곱셈: " +number1+ " * " +number2+ " = " + multiplication);
		int division = number1 / number2;
		System.out.println("나눗셈: " +number1+ " / " +number2+ " = " + division);
		int remainder = number1 % number2;
		System.out.println("나머지: " +number1+ " % " +number2+ " = " + remainder);
		
	}
}











