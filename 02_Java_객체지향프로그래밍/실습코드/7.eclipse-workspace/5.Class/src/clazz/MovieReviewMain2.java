package clazz;

/*
 *  배열을 도입하고 영화 리뷰를 배열에서 관리하시오.
 *  리뷰 출력할 때 배열과 for문 사용 - 향상된 for 
 */
public class MovieReviewMain2 {

	public static void main(String[] args) {
		MovieReview[] reviews = new MovieReview[2];
		
		MovieReview kpop = new MovieReview();
		kpop.title = "케이팝 데몬 헌터스";
		kpop.review = "신나는 분위기";
		reviews[0] = kpop;
		
		MovieReview yadang = new MovieReview();
		yadang.title = "야당";
		yadang.review = "연기 뛰어나고 재미 있음";
		reviews[1] = yadang;
		
		for (MovieReview review : reviews) {
			System.out.println("영화 제목:" +review.title+ 
									", 리뷰: " + review.review);
		}
	}
}

















