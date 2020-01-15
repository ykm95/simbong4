package page.service.center.record;

import java.util.List;

import page.dto.Applicant;
import page.util.Paging;

public interface RecordService {

	public Paging getPaging(Paging paging, int centerno);

	public List getRecordList(Paging paging);

	public List<Applicant> getAplByNo(int volunteerno);

	public void record(int volunteerno, int applicantno);

}
