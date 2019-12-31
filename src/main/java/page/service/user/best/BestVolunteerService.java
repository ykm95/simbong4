package page.service.user.best;

import java.util.List;

import page.dto.BestVolunteer;
import page.util.Paging;



public interface BestVolunteerService {
	/**
	 * 전체 목록
	 * @return
	 */
	public List<BestVolunteer> getBestList(Paging paging);
	/**
	 * 검색
	 * @param paging
	 * @return
	 */
	public List<BestVolunteer> getSearchList(Paging paging);
	/**
	 * 페이징 가져오기
	 * @param paging
	 * @return
	 */
	public Paging getPaging(Paging paging);
	/**
	 * 우수봉사자 인터뷰
	 * @param viewBest
	 * @return
	 */
	public BestVolunteer bestView(int bestno);
	
}
