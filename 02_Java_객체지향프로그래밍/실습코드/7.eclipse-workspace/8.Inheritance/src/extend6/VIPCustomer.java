package extend6;

/*
 * 제품을 살때 10% 할인을 해 줌
 * 포인트는 제품 가격의 5% 적립해 줌 
 * 담당 전문 상담원이 배정됨
 */
public class VIPCustomer extends Customer {

	private int agentID;
	private double salesRatio;
	
	public VIPCustomer() {
		customerGrade = "VIP";
		bonusRatio = 0.05;		// 5% 보너스 적립
		salesRatio = 0.1;		// 10% 할인
	}

	public int getAgentID() {
		return agentID;
	}

	public void setAgentID(int agentID) {
		this.agentID = agentID;
	}

	public double getSalesRatio() {
		return salesRatio;
	}

	public void setSalesRatio(double salesRatio) {
		this.salesRatio = salesRatio;
	}
	
	@Override		// VIP 고객 : 10% 할인 + 5% 보너스 적립
	public int calcPrice(int price) {
		bonusPoint += price * bonusRatio;
		return price - (int)(price * salesRatio);
	}
	
	@Override
	public String showInfo() {
		return customerName +"님의 등급은 " +customerGrade+
				"이며, 보너스 포인트는 " +bonusPoint+ 
				"이고, 담당 상담원 번호는 " +agentID+ "입니다.";
	}
}
















