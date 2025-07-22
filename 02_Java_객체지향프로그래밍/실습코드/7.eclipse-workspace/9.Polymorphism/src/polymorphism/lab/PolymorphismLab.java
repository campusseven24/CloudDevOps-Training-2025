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
		System.out.println("고용형태: 정규직");
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
		System.out.println("고용형태: 파트타임");
	}
			
}


// 프리랜서 클래스
// 속성 : 프로젝트 개수, 프로젝트당 수수료 
// 급여 계산 : 프로젝트 개수 * 프로젝트당 수수료 
class FreelancerEmployee extends Employee {
	private int projectCount;
	private int projectFee;
	
	public FreelancerEmployee(String name, int projectCount, int projectFee) {
		super(name, 0);		//기본급은 0으로 변경
		this.projectCount = projectCount;
		this.projectFee = projectFee;
	}
	
	@Override
	public int calculateSalary() {
		return projectFee * projectCount;
	}
	
	@Override
	public void printEmpolyeeInfo() {
		System.out.println("직원명: " + name);
		System.out.println("프로젝트당 수수료:" +projectFee+ "만원");
		System.out.println("완료 프로젝트: " +projectCount+ "개");
		System.out.println("총 급여: " + calculateSalary());
		System.out.println("고용형태: 프리랜서");
	}
	
}



//인턴 직원 클래스 
//속성 : 인턴십 기간 
//급여 계산 : 기본급 * 0.8



//계약직 직원 클래스 (ContractEmployee)
//속성 : 계약 개월 수(contractMonths), 계약 완료 보너스(contractBonus) 
//급여 계산 : 기본급 + (계약 개월수 따른 보너스) 
//               ------------------
//           contractMonths >= 12 ? contractBonus : 0  

class PayrollSystem {
	//급여 계산 메서드 (다형성 활용)
	public static void calculatePayroll(Employee employee) {
		System.out.println("===급여 계산서===");
		employee.printEmpolyeeInfo();
		System.out.println("=============");
		System.out.println();
	}
	
	// 여러 직원들의 총 급여 계산 
	public static int calculateTotalSalary(Employee[] employees) {
		int total = 0;
		for(Employee emp : employees) {
			total += emp.calculateSalary();		//각 직원의 급여 계산 방식이 다름
		}
		return total;
	}
}

public class PolymorphismLab {

	public static void main(String[] args) {
		System.out.println("🏢 다형성 연습 - 직원 관리 시스템");
		System.out.println("==================================");
		
		//1. 다양한 직원 객체 생성 (다형성 활용)
		Employee emp1 = new FullTimeEmpolyee("이순신", 400, 100); //정규직
		Employee emp2 = new PartTimeEmployee("이아르바이트", 10, 80); //파트타임
		Employee emp3 = new FreelancerEmployee("박프리", 200, 3);	//프리랜서
		Employee emp4 = new FullTimeEmpolyee("최매니저", 600, 200); //정규직
		
		//2. 배열에 저장 (다형성 활용)
		Employee[] employees = {emp1, emp2, emp3, emp4};
		
		//3. 개별 급여 계산 (다형성 활용)
		System.out.println("📊 개별 급여 계산 테스트");
		System.out.println("==================");
		
		for(Employee emp : employees) {
			PayrollSystem.calculatePayroll(emp);
		}
		
		//4. 전체 급여 통계 
		System.out.println("📈 급여 통계");
		System.out.println("==========");
		System.out.println("총 직원 수: " + employees.length +"명");
		System.out.println("총 급여 지출: " + 
					PayrollSystem.calculateTotalSalary(employees) +"만원");
	}
}






























