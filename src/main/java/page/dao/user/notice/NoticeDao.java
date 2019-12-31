package page.dao.user.notice;

import java.util.List;

import page.dto.Notice;
import page.util.Paging;

public interface NoticeDao {
	
	/**
	 * 게시글 전체 목록 조회
	 * @return
	 */
	public List<Notice> selectNoticeAll(Paging paging);
	/**
	 * 검색
	 * @param paging
	 * @return
	 */
	public List<Notice> selectSearchAll(Paging paging);
	/**
	 * 페이징
	 * @return
	 */
	public int selectCntAll();
	/**
	 * 공지사항 상세보기
	 * @param viewBest
	 * @return
	 */
	public Notice selectNoticeBynoticeno(int noticeno);
	/**
	 * 게시물 조회수 +1
	 * @param viewBest
	 */
	public void updateView(Notice viewNotice);
	/**
	 * 상세보기 게시글 조회
	 *
	 * @param viewBest
	 * @return
	 */
	public Notice selectNoticeByNoticeno(Notice viewNotice);
	/**
	 * 조회수
	 * @param noticeno
	 */
	public void hit(int noticeno);
}
