package interface7;
/*
 * - 결재 가능한 객체를 나타내는 기본 인터페이스 
 * - 결재 시스템의 최상위 인터페이스로 사용함
 */
public interface Payable {

	//결재 처리 추상 메서드 - 각 결재 수단별 고유한 결재 로직 구현함 
	boolean processPayment(double amount);
	
	//결재 수수료 계산하는 디폴트 메서드 
	//기본 정책 : 결재 금액의 2% 수수료 계산 
	default double calculateFee(double amount) {
		return amount * 0.02;
	}
	
	default String getPaymentMethod() {
		return "일반 결재";
	}
}
