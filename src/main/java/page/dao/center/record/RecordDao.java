package page.dao.center.record;

import java.util.List;

import page.dto.Applicant;
import page.util.Paging;

public interface RecordDao {

	public int selectCntRecord(int centerno);

	public List selectAllRecord(Paging paging);

	public List<Applicant> selectAplByNo(int volunteerno);

	public void updateAprocess(int applicantno);

	public int aprocessChk(int volunteerno);

	public int apeopleChk(int volunteerno);

	public void updateVprocess1(int volunteerno);

	public void updateVprocess2(int volunteerno);

}
