package polymorphism.lab;

//직원 관리(급여) 시스템

//부모 클래스
class Employee {
	protected String name;		// 직원 이름
	protected int baseSalary;	// 기본 급여
	
	public Employee(String name, int baseSalary) {
		//super();
		this.name = name;
		this.baseSalary = baseSalary;
	}
	
	// 급여 계산 메서드 
	public int calculateSalary() {
		return baseSalary;			//기본 급여 반환 
	}
	
	// 직원 정보 출력 메서드
	public void printEmpolyeeInfo() {
		System.out.println("직원명 : " + name);
		System.out.println("기본급여 : " + baseSalary +"만원");
	}
	
}

//자식 클래스
//정규직 직원 클래스
class FullTimeEmpolyee extends Employee {
	private int bonus;

	public FullTimeEmpolyee(String name, int baseSalary, int bonus) {
		super(name, baseSalary);		//부모 생성자 호출
		this.bonus = bonus;
	}
	
	@Override
	public int calculateSalary() {
		return baseSalary + bonus;		//기본급 + 보너스 
	}

	@Override
	public void printEmpolyeeInfo() {
		super.printEmpolyeeInfo();
		System.out.println("보너스 : " +bonus+ "만원");
		System.out.println("총 급여 : " +calculateSalary()+ "만원");
	}
	
}

//파트타임 직원 클래스
class PartTimeEmployee extends Employee {
	private int workHours;		//근무시간
	private int hourlyRate;		//시간당 급여 
	
	public PartTimeEmployee(String name, int hourlyRate, int workHours) {
		super(name, 0);
		this.workHours = workHours;
		this.hourlyRate = hourlyRate;
	}

	@Override
	public int calculateSalary() {
		return hourlyRate * workHours;
	}

	@Override
	public void printEmpolyeeInfo() {
		System.out.println("직원명 : " + name);
		System.out.println("시간당 급여 : " +hourlyRate+ "만원" );
		System.out.println("근무 시간 : " +workHours+ "시간");
		System.out.println("총 급여 : " +calculateSalary()+ "만원");
	}
			
}


// 프리랜서 클래스
// 속성 : 프로젝트 개수, 프로젝트당 수수료 
// 급여 계산 : 프로젝트 개수 * 프로젝트당 수수료 
//class FreelancerEmployee extends Employee {
//	
//}



//인턴 직원 클래스 
//속성 : 인턴십 기간 
//급여 계산 : 기본급 * 0.8



//계약직 직원 클래스 (ContractEmployee)
//속성 : 계약 개월 수(contractMonths), 계약 완료 보너스(contractBonus) 
//급여 계산 : 기본급 + (계약 개월수 따른 보너스) 
//               ------------------
//           contractMonths >= 12 ? contractBonus : 0  

public class PolymorphismLab {

	public static void main(String[] args) {
		System.out.println("🏢 다형성 연습 - 직원 관리 시스템");
		System.out.println("==================================");
		
		//1. 다양한 직원 객체 생성 (다형성 활용)
		Employee emp1 = new FullTimeEmpolyee("이순신", 400, 100); //정규직
		Employee emp2 = new PartTimeEmployee("이아르바이트", 10, 80); //파트타임
		//Employee emp3 = new FreelancerEmployee("박프리", 200, 3);	//프리랜서
		Employee emp4 = new FullTimeEmpolyee("최매니저", 600, 200); //정규직
		
		//2. 배열에 저장 (다형성 활용)
		Employee[] employees = {};
		
		//3. 개별 급여 계산 (다형성 활용)
		
		//4. 전체 급여 통계 
		
	}
}






























