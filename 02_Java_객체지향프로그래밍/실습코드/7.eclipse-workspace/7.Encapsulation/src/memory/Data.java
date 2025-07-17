package memory;

public class Data {

	//인스턴스 변수 : 객체 생성시 Heap 메모리에 저장됨.
	private int value;

	//생성자 : 객체 초기화 담당
	public Data(int value) {
		//super();
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
	
	
	
}
