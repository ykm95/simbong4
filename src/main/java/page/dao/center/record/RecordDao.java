package page.dao.center.record;

import java.util.List;

import page.util.Paging;

public interface RecordDao {

	public int selectCntRecord(int centerno);

	public List selectAllRecord(Paging paging);

}
