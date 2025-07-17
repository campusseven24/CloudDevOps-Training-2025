package access.b;

import access.a.AcessData;

public class AcessDataOuterMain {

	public static void main(String[] args) {
		AcessData data = new AcessData();
		
		// public 호출 가능
		data.publicField = 11;
		data.publicMethod();
		
		// 다른 패키지 default 호출 불가
		//data.defaultField = 22;
		//data.defaultMethod();
		
		//private 호출 불가 
		//data.privateField = 33;
		//data.privateMethod();
		
		data.innerAccess();
	}
}












