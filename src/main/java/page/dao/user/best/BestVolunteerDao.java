package page.dao.user.best;

import java.util.List;

import page.dto.BestVolunteer;
import page.util.Paging;


public interface BestVolunteerDao {
	/**
	 * 게시글 전체 목록 조회
	 * @return
	 */
	public List<BestVolunteer> selectBestAll(Paging paging);
	/**
	 * 검색
	 * @param paging
	 * @return
	 */
	public List<BestVolunteer> selectSearchAll(Paging paging);
	/**
	 * 페이징
	 * @return
	 */
	public int selectCntAll();
	/**
	 * 우수봉사자 상세보기
	 * @param viewBest
	 * @return
	 */
	public BestVolunteer selectBestVolunteerBybestno(int bestno);
	/**
	 * 조회수 +1
	 * @param bestno
	 */
	public void hit(int bestno);
	
}
