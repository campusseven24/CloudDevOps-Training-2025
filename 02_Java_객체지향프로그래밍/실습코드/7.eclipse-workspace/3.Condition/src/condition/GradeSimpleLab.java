package condition;

public class GradeSimpleLab {
	
	public static void main(String[] args) {
		//학생 시험 점수
		String studentName = "이순신";
		int mathScore = 85;
		int englishScore = 92;
		int koreaScore = 78;
		
		System.out.println("=== 성적 관리 시스템 ===");
		System.out.println("학생 이름:" +studentName);
		System.out.println("수학 점수 : " +mathScore+ "점");
		System.out.println("영어 점수 : " +englishScore+ "점");
		System.out.println("국어 점수 : " +koreaScore+ "점");
		System.out.println();
		
		// 점수 유효성 검증 (0~100점 사이)
		boolean isValidScore = true;
		
		if (mathScore < 0 || mathScore > 100) {
			System.out.println(" ❌ 수학 점수가 잘못되었습니다. (0~100점)");
			isValidScore = false;
		}
		if (englishScore < 0 || englishScore > 100) {
			System.out.println(" ❌ 영어 점수가 잘못되었습니다. (0~100점)");
			isValidScore = false;
		}
		if (koreaScore < 0 || koreaScore > 100) {
			System.out.println(" ❌ 국어 점수가 잘못되었습니다. (0~100점)");
			isValidScore = false;
		}	
		
		// 점수가 유효하지 않으면 처리 중단
		if(!isValidScore) {
			System.out.println("점수가 다시 확인해주세요.");
			return;
		}
		
		//모든 점수가 유효한 경우
		System.out.println("모든 점수가 유효합니다. 성적을 계산합니다...\n");
		
		int totalScore = mathScore + englishScore + koreaScore;
		double average = totalScore / 3.0;
		
		System.out.println("=== 성적 계산 결과 ===");
		System.out.println("총점 : " +totalScore+ "점");
		/*
		 *	%d : 정수
		 *	%f : 실수 (float, double) - 기본 소수점 6자리 (예: %.1f <--소수점 첫째자리까지)
		 *	%s : 문자열
		 *	%c : 문자
		 *	%n : 줄바꿈  
		 */
		System.out.println("평균: " +String.format("%.1f", average)+ "점");
		
		String grade = "";
		if(average >= 90) {
			grade = "A";
			System.out.println("등급 : A(우수)");
		} else if (average >= 80) {
			grade = "B";
			System.out.println("등급 : B(양호)");			
		} else if (average >= 70) {
			grade = "C";
			System.out.println("등급 : C(보통)");			
		} else if (average >= 60) {
			grade = "D";
			System.out.println("등급 : D(미흡)");			
		} else {
			grade = "F";
			System.out.println("등급 : F(불합격)");				
		}
		
		System.out.println("=== 과목별 분석 ===");
		//가장 높은 점수 과목
		if(mathScore >= englishScore && mathScore >= koreaScore) {
			System.out.println(" 🔥 강점 과목 : 수학 (" +mathScore+ "점)");
		} else if(englishScore >= koreaScore) {
			System.out.println(" 🔥 강점 과목 : 영어 (" +englishScore+ "점)");
		} else {
			System.out.println(" 🔥 강점 과목 : 국어 (" +koreaScore+ "점)");
		}
		
		//가장 낮은 점수 과목
		if(mathScore <= englishScore && mathScore <= koreaScore) {
			System.out.println(" 💪 집중 필요 과목 : 수학 (" +mathScore+ "점)");
		} else if(englishScore <= koreaScore) {
			System.out.println(" 💪 집중 필요 과목 : 영어 (" +englishScore+ "점)");
		} else {
			System.out.println(" 💪 집중 필요 과목 : 국어 (" +koreaScore+ "점)");
		}		
		
		System.out.println("=== 최종 결과 ===");
		/*
		 *  평균이 60 이상
		 *  =>(출력)    축하합니다! 합격입니다.
		 *  	- 평균이 90 이상
		 *  	=>(출력)    성적 우수상 수상 대상입니다!
		 *  	- 평균이 80 이상
		 *  	=>(출력)    도서 상품권을 드립니다!		 *  		
		 *  
		 *  
		 *  =>(출력)		아쉽지만 불합격입니다.
		 *              재시험 기회가 있으니 포기하지 마세요!
		 */
		if(average >= 60) {
			System.out.println("🎊 축하합니다! 합격입니다.");
			
			if(average >= 90) {
				System.out.println("🏆 성적 우수상 수상 대상입니다!");
			} else if (average >= 80) {
				System.out.println("🎁 도서 상품권을 드립니다!");
			}
			
		} else {
			System.out.println("😣 아쉽지만 불합격입니다.");
			System.out.println("재시험 기회가 있으니 포기하지 마세요!");
		}
	}
}










