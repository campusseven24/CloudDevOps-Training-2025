package constructor;

public class MemeberInitMain {
	public static void main(String[] args) {
		MemeberInit member1 = new MemeberInit();
		member1.name = "user1";
		member1.age = 20;
		member1.grade = 90;
		
		MemeberInit member2 = new MemeberInit();
		member2.name = "user2";
		member2.age = 40;
		member2.grade = 80;
		
		MemeberInit[] members = {member1, member2};
		for(MemeberInit m : members) {
			System.out.println
					("이름: " +m.name+ ", 나이: " +m.age+ ", 성적: "+m.grade);
			
			
		}
	}
}
