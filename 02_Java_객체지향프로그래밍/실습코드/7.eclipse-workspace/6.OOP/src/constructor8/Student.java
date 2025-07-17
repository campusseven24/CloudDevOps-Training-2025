package constructor8;

public class Student {
	String name;
	int age;
	String major;
	
	
	// 기본 생성자 - 모든 필드를 기본값으로 초기화 
	Student() {
		//super();
		this("", 0, "");	// 다른 생성자 호출
	}

	// 이름만 받는 생성자
	Student(String name) {
		//super();
		this(name, 0, "");	// 3개 매개변수 생성자 호출
	}
	
	// 이름과 나이를 받는 생성자 
	public Student(String name, int age) {
		//super();
		this(name, age, "");	
	}

	// 모든 필드를 매개변수로 받는 생성자 (완전한 생성자)
	Student(String name, int age, String major) {
		//super();
		this.name = name;	// 매개변수 name을 인스턴스 변수 name에 할당
		this.age = age;
		this.major = major;
	}
	
	void displayInfo() {
		System.out.println("이름: " +name+ ", 나이 :" +age+ ", 전공 :" + major);
	}
	
}





