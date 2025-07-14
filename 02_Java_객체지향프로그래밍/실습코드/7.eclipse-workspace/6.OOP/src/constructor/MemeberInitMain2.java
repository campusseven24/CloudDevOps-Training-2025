package constructor;

public class MemeberInitMain2 {
	public static void main(String[] args) {
		MemeberInit member1 = new MemeberInit();
		initMember(member1, "user1", 20, 90);
		
		MemeberInit member2 = new MemeberInit();
		initMember(member2, "user2", 40, 80);

		
		MemeberInit[] members = {member1, member2};
		for(MemeberInit m : members) {
			System.out.println
					("이름: " +m.name+ ", 나이: " +m.age+ ", 성적: "+m.grade);
			
			
		}
	}

	static void initMember(MemeberInit member, String name, int age, int grade) {
		member.name = name;
		member.age = age;
		member.grade = grade;
	}
}








