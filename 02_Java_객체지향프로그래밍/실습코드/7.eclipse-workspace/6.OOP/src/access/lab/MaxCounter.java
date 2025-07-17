package access.lab;

public class MaxCounter {
	private int count = 0;
	private int max;		// 최대 허용 카운터 값을 저장하는 필드
	
	// 객체 생성시 최대값을 설정
	public MaxCounter(int max) {	// 매개변수로 받은 max 값을 인스턴스 변수에 저장
		//super();
		this.max = max;
	}

	// public 메서드 : 외부에서 카운터를 증가 시킬수 있는 안전한 방법 제공
	public void increment() {
		if(count >= max) {
			System.out.println("최대값을 초과할 수 없습니다.");
			return;	 	// 메서드 종료 (증가 안됨)
		}
		count++;	// 카운터 증가
	}

	public int getCount() {
		
		return count;		// private  필드 값을 반환
	}
	
	
}
