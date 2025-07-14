package constructor3;

public class ConstructMain {

	public static void main(String[] args) {
		MemeberConstruct member1 = new MemeberConstruct("user1", 15, 90);
		MemeberConstruct member2 = new MemeberConstruct("user2", 16, 80);
		
		MemeberConstruct[] members = {member1, member2};
		for(MemeberConstruct m : members) {
			System.out.println("이름 : " +m.name+ ", 나이 : " 
									+ m.age +", 성적 : " + m.grade);
			
		}
	}
}
