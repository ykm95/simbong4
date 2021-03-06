package page.service.center.mypage;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import page.dao.center.mypage.CenterMypageDao;
import page.dto.Center;
import page.dto.CenterQuestion;
import page.util.Paging;

@Service
public class CenterMypageServiceImpl implements CenterMypageService {
	
	private static final Logger logger = LoggerFactory.getLogger(CenterMypageServiceImpl.class);

	@Autowired ServletContext context;

	@Autowired CenterMypageDao centerMypageDao;
	
	@Override
	public boolean login(Center center) {
		
		if (centerMypageDao.selectCnt(center) >= 1) {
			return true;
		}
		return false;
	}

	@Override
	public Center getInformation(Center center) {
		return centerMypageDao.selectInformationByBusinessno(center);
	}

	@Override
	public boolean checkPw(Center center) {
		if ( centerMypageDao.selectCnt(center) > 0 ) {
			return true;
		} 
		
		return false;
	}

	@Override
	public void centerInformationUpdate(Center center) {
		centerMypageDao.update(center);
		
	}

	@Override
	public void centerInformationDelete(Center center) {
		centerMypageDao.delete(center);
		
	}

	@Override
	public int getCenterno(Center center) {
		return centerMypageDao.selectCenternoByBusinessno(center);
	}
	
	@Override
	public int getQuestionno() {
		return centerMypageDao.selectQuestionnoByDual();
	}

	@Override
	public void writeQST(CenterQuestion centerquestion, MultipartFile file) {
		logger.info(context.getRealPath("TEST"));
		
		//파일이 저장될 경로
		String storedPath = context.getRealPath("/resources/upload");
		
		//저장될 파일의 이름 (원본명 + UUID)
		String filename = centerquestion.getQuestionno()+"";
		
		//저장될 파일 객체
		File dest = new File(storedPath, filename);
		
		try {
			file.transferTo(dest); //실제 파일 저장
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		centerquestion.setPic("/resources/upload/" + filename);
		
		centerMypageDao.insertQuestion(centerquestion);
		
	}

	@Override
	public List<CenterQuestion> getList(Paging paging) {
		return centerMypageDao.selectAll(paging);
	}

	@Override
	public CenterQuestion viewQST(int questionno) {
		return centerMypageDao.selectQuestionByQuestionno(questionno);
	}

	@Override
	public void deleteQST(CenterQuestion centerquestion) {
		centerMypageDao.deleteQuestion(centerquestion);
	}

	@Override
	public Paging getPaging(Paging paging) {
		int curPage = paging.getCurPage();

		int totalCount = centerMypageDao.selectCntAll();

		paging = new Paging(totalCount, curPage);

		return paging;
	}

	@Override
	public Center centerView(int centerno) {
		return centerMypageDao.selectCenterByCenterno(centerno);
	}


}
