package page.service.user.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.user.notice.NoticeDao;
import page.dto.Notice;
import page.util.Paging;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired  NoticeDao noticeDao;

	@Override
	public List<Notice> getNoticeList(Paging paging) {
		return noticeDao.selectNoticeAll(paging);
	}
	@Override
	public List<Notice> getSearchList(Paging paging) {
		return noticeDao.selectSearchAll(paging);
	}

	@Override
	public Paging getPaging(Paging paging) {
		int curPage = paging.getCurPage();
		int totalPage = noticeDao.selectCntAll();
		Paging paging2 = new Paging(totalPage, curPage);
		paging2.setKeyword(paging.getKeyword());
		paging2.setSearchcategory(paging.getSearchcategory());
		return paging2;
		
	} 
	@Override
	public Notice noticeView(int noticeno) {
		return noticeDao.selectNoticeBynoticeno(noticeno);
	}



}
