package page.dao.center.talent;

import java.util.List;

import page.dto.Talent;
import page.util.Paging;

public interface CenterTalentDao {

	public int selectCntAll();

	public List selectAllTalent(Paging paging);

	public Talent selectTalentByTalentno(Talent talent);

}
