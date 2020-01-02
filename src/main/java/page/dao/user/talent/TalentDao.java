package page.dao.user.talent;

import java.util.List;

import page.dto.Talent;
import page.util.PagingTalent;

public interface TalentDao {

	public List<Talent> selectTalentAll(PagingTalent paging);
	
	public Talent selectTalentByNo(int talentno);

	public void insertTalent(Talent talent);

	public void updateTalent(Talent talent);

	public void deleteTalent(int talentno);

	public int selectCntTalent(PagingTalent paging);
}
