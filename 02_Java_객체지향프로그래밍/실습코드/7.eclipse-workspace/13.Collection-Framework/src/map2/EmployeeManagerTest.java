package map2;

import java.util.List;

public class EmployeeManagerTest {

	public static void main(String[] args) {
		EmployeeManager manager = new EmployeeManager();
		
		System.out.println("🏢 직원 관리 시스템(HashMap) ");
		System.out.println("=".repeat(50));
		
		//1. 직원 데이터 추가 
		addEmployees(manager);
		
		//2. 전체 직원 조회
		showAllEmployees(manager);
		
		//3. 개별 직원 조회
		findEmployee(manager);
	}

	private static void findEmployee(EmployeeManager manager) {
		System.out.println("\n📝 3. 직원 검색 ");
		System.out.println("-".repeat(30));	
		
		// 사번으로 검색
		System.out.println("📌 사번으로 검색: ");
		Employee found = manager.findEmployeeById("emp003");
		if(found != null) {
			System.out.println("검색 결과: " + found);
		}
		
		//존재하지 않는 사번
		Employee notFound = manager.findEmployeeById("emp999");
		System.out.println("존재하지 않는 사원 검색 결과: " +
				(notFound == null ? "직원을 찾을수 없습니다." : notFound));
		
		//부분 일치
		System.out.println("\n📌 이름으로 검색 ('이' 포함):");
		List<Employee> searchResult = manager.findEmployeeByName("이");
		if(searchResult.isEmpty()) {
			System.out.println("검색 결과가 없습니다.");
		} else {
			searchResult.forEach(System.out::println);
		}
		
	}

	private static void showAllEmployees(EmployeeManager manager) {
		System.out.println("\n📝 2. 전체 직원 조회 ");
		System.out.println("-".repeat(30));
		
		manager.showAllEmployees();
		
	}

	private static void addEmployees(EmployeeManager manager) {
		System.out.println("\n📝 1. 직원 추가 ");
		System.out.println("-".repeat(30));
		
		//다양한 부서의 직원들 추가
		Employee emp1 = new Employee("emp001", "이방원", "개발팀", "주임", 45000000, "Lee@gmail.com");
		Employee emp2 = new Employee("emp002", "신사임당", "마케팅팀", "대리", 48000000, "shin@gmail.com");
		Employee emp3 = new Employee("emp003", "류성룡", "개발팀", "선임", 52000000, "Ryu@gmail.com");
		Employee emp4 = new Employee("emp004", "손흥민", "인사팀", "과장", 60000000, "Son@gmail.com");
		Employee emp5 = new Employee("emp005", "이강", "개발팀", "사원", 38000000, "Han@gmail.com");
		
		manager.addEmployee(emp1);
		manager.addEmployee(emp2);
		manager.addEmployee(emp3);
		manager.addEmployee(emp4);
		manager.addEmployee(emp5);
		
		//중복 사번 추가
		Employee duplicatedEmp = new Employee("emp001", "이순신", "테스트팀");
		manager.addEmployee(duplicatedEmp);		//실패해야 함 
	}
}



















