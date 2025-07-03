package variable;

import java.text.NumberFormat;
import java.util.Locale;

public class TimeCalculatorVar {

	public static void main(String[] args) {
		
		System.out.println("=== 시간 계산기 ===");
		System.out.println();
		
		int totalSeconds = 7395;	// 7395초 
		
		// 초를 시, 분, 초로 변환 
		System.out.println("--- 시간 변환 ---");
		System.out.println("총 초 : " +totalSeconds+ "초");
		
		// 1시간 = 60분 * 60초 = 3600초 
		int hour = totalSeconds / 3600;
		int remainingSeconds = totalSeconds % 3600;  //나머지 초 계산
		int minutes = remainingSeconds / 60;  // 1분 = 60초 
		int seconds = remainingSeconds % 60;  // 나머지 초 계산 
		
		System.out.println
			("변환 결과 : " +hour+ "시간 " +minutes+ "분 " +seconds+ "초");
		System.out.println();
		
		// 작업 관련 정보
		int workHours = 8;
		int workDays = 22;
		int hourlyWage = 15000;
		
		NumberFormat numberFormat = 
				NumberFormat.getNumberInstance(Locale.KOREA);
		
		System.out.println("=== 근무시간 계산 ===");
		System.out.println("일일 근무시간: " +workHours+ "시간");
		System.out.println("월 근무일수: " +workDays+ "일");
		System.out.println("시급: " +numberFormat.format(hourlyWage)+ "원");
		System.out.println();
		
		//월 총 근무시간 
		int monthlyWorkHours = workHours * workDays;
		System.out.println("월 총 근무시간: " +monthlyWorkHours+ "시간");
		
		//일급
		int dailyWage = hourlyWage * workHours;
		System.out.println("일급: " +numberFormat.format(dailyWage)+ "원");
		
		//월급 
		int monthlyWage = dailyWage * workDays;
		System.out.println("월급: " +numberFormat.format(monthlyWage)+ "원");
		System.out.println();
		
		System.out.println("--- 추가 정보 ---");
		
		//1년 근무시간 (월 22일 기준)
		int yearlyWorkHours = monthlyWorkHours * 12;
		System.out.println("연간 총 근무시간: " +
						numberFormat.format(yearlyWorkHours)+ "시간");
		
		//연봉
		int yearlySalary = monthlyWage * 12;
		System.out.println("연봉: " +numberFormat.format(yearlySalary)+ "원");
		
		//하루를 초로 계산
		int secondsInDay = 24 * 60 * 60;
		System.out.println("하루는 총 " +
					numberFormat.format(secondsInDay)+ "초입니다.");
		
		//일주일을 분으로 계산
		int minutesInWeek = 7 * 24 * 60;
		System.out.println("일주일은 총 " +
				numberFormat.format(minutesInWeek)+ "분입니다.");		
	}
}





















