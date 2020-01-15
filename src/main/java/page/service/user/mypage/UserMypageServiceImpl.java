package page.service.user.mypage;

import java.io.File;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import page.dao.user.mypage.UserMypageDao;
import page.dto.Applicant;
import page.dto.Question;
import page.dto.User;
import page.dto.Volunteer;
import page.util.Paging;
import page.util.PagingApplicant;

@Service
public class UserMypageServiceImpl implements UserMypageService {
	
	private static final Logger logger = LoggerFactory.getLogger(UserMypageServiceImpl.class);

	@Autowired ServletContext context;
	
	@Autowired UserMypageDao userMypageDao;
	
	@Override
	public boolean checkPw(User user) {
		if ( userMypageDao.selectCnt(user) > 0 ) {
			return true;
		} 
		
		return false;
	}

	@Override
	public User getInformation(User user) {
		return userMypageDao.selectInformationByUemail(user);
	}

	@Override
	public void userInformationUpdate(User user) {
		userMypageDao.update(user);
	}

	@Override
	public void userInformationDelete(User user) {
		userMypageDao.delete(user);
	}

	@Override
	public int getUlogin(User user) {
		return userMypageDao.selectUloginByUemail(user);
	}

	@Override
	public void googleInformationUpdate(User user) {
		userMypageDao.googleUpdate(user);
	}

	@Override
	public Volunteer getPdfData(int applicantno) {
		return userMypageDao.pdfView(applicantno);
}
	public List<Question> getList(Paging paging) {
		return userMypageDao.selectAll(paging);
	}

	@Override
	public int getQuestionno() {
		return userMypageDao.selectQuestionnoByDual();
	}


	@Override
	public void writeQST(Question question, MultipartFile file) {
		logger.info(context.getRealPath("TEST"));
		
		//파일이 저장될 경로
		String storedPath = context.getRealPath("/resources/upload");
		
		//저장될 파일의 이름 (원본명 + UUID)
		String filename = question.getQuestionno()+"";
		
		//저장될 파일 객체
		File dest = new File(storedPath, filename);
		
		try {
			file.transferTo(dest); //실제 파일 저장
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		question.setPic("/resources/upload/" + filename);
		
		userMypageDao.insertQuestion(question);
		
	}

	@Override
	public Question viewQST(int questionno) {
		return userMypageDao.selectQuestionByQuestionno(questionno);
	}

	@Override
	public void deleteQST(Question question) {
		userMypageDao.deleteQuestion(question);
	}

	@Override
	public Paging getPaging(Paging paging) {
		int curPage = paging.getCurPage();

		int totalCount = userMypageDao.selectCntAll();

		paging = new Paging(totalCount, curPage);

		return paging;
	}

	@Override
	public List<Applicant> getApplicant(Paging paging) {
		return userMypageDao.selectApplicant(paging);
	}

	@Override
	public Paging getAppPaging(Paging paging) {
		
		
		int curPage = paging.getCurPage();

		int totalCount = userMypageDao.selectCntAppAll(paging.getUserno());

		Paging pagingRes = new Paging(totalCount, curPage);
		
		return pagingRes;
	}

	@Override
	public User Userview(int userno) {
		return userMypageDao.selectUserByuserno(userno);
	}

	@Override
	public PagingApplicant getPerformancePaging(PagingApplicant paging) {
		int curPage = paging.getCurPage();

		int totalCount = userMypageDao.selectCntPerformanceAll(paging.getUserno());

		PagingApplicant pagingRes = new PagingApplicant(totalCount, curPage);
		
		pagingRes.setVol_sterm(paging.getVol_sterm());
		pagingRes.setVol_eterm(paging.getVol_eterm());
		pagingRes.setStime(paging.getStime());
		pagingRes.setEtime(paging.getEtime());
		pagingRes.setVol_process(paging.getVol_process());
		pagingRes.setVol_title(paging.getVol_title());
		pagingRes.setDepartname(paging.getDepartname());
		pagingRes.setCname(paging.getCname());
		pagingRes.setApplicantno(paging.getApplicantno());
		
		return pagingRes;
	}

	@Override
	public List<PagingApplicant> getPerformance(PagingApplicant paging) {
		return userMypageDao.selectPerformance(paging);
	}
	
}
