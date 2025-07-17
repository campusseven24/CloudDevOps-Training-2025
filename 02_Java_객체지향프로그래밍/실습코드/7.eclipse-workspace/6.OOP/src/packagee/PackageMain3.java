package packagee;

import packagee.a.*;		// packagee.a의 모든 클래스 사용

public class PackageMain3 {

	public static void main(String[] args) {
		User userA = new User();		//import 사용으로 패키지 명 생략 가능
		packagee.b.User userB = new packagee.b.User();
	}
}
