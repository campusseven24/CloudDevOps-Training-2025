package constructor2;

public class MemeberInitMain3 {

	public static void main(String[] args) {
		MemeberInit member1 = new MemeberInit();
		member1.initMember("user1", 15, 90);
		
		MemeberInit member2 = new MemeberInit();
		member2.initMember("user2", 16, 80);
		
		MemeberInit[] members = {member1, member2};
		for(MemeberInit m : members) {
			System.out.println("이름 : " + m.name + ", 나이 : " 
								+m.age+ ", 성적 : " + m.grade);
		}
	}
}
