package page.service.center.record;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import page.dao.center.record.RecordDao;
import page.dto.Applicant;
import page.util.Paging;

@Service
public class RecordServiceImpl implements RecordService {
	
	@Autowired RecordDao recordDao;

	@Override
	public Paging getPaging(Paging paging, int centerno) {
		
		int curPage = paging.getCurPage();
		
		int totalCount = recordDao.selectCntRecord(centerno);
		
		Paging pagingList = new Paging(totalCount, curPage);
		
		return pagingList;
	}

	@Override
	public List getRecordList(Paging paging) {

		return recordDao.selectAllRecord(paging);
	}

	@Override
	public List<Applicant> getAplByNo(int volunteerno) {

		return recordDao.selectAplByNo(volunteerno);
	}

	@Override
	public void record(int volunteerno, int applicantno) {

		recordDao.updateAprocess(applicantno);
		
		if(recordDao.aprocessChk(volunteerno) == 1) {
			
			recordDao.updateVprocess1(volunteerno);
		}
		
		if(recordDao.aprocessChk(volunteerno) == recordDao.apeopleChk(volunteerno)) {
			
			recordDao.updateVprocess2(volunteerno);
		}
	}

}
