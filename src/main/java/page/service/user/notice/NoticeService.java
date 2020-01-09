package page.service.user.notice;

import java.util.List;

import page.dto.Notice;
import page.util.Paging;




public interface NoticeService {
	
	/**
	 * 전체 목록
	 * @return
	 */
	
	public List<Notice> getNoticeList(Paging paging);
	/**
	 * 검색
	 * @param paging
	 * @return
	 */
	public List<Notice> getSearchList(Paging paging);
	/**
	 * 페이징 가져오기
	 * @param paging
	 * @return
	 */
	public Paging getPaging(Paging paging);
	/**
	 * 공지사항 상세보기
	 * @param viewBest
	 * @return
	 */
	public Notice noticeView(int noticeno);
	/**
	 * 메인페이지 공지사항 5개목록
	 * @param notice
	 * @return
	 */
	public List<Notice> mainNotice();

}
