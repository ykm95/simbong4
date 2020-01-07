package page.service.user.talent;

import java.util.List;

import page.dto.Talent;
import page.util.PagingTalent;

public interface TalentService {

	public List<Talent> getTalentList(PagingTalent paging);

	public Talent getTalent(int talentno);

	public void write(PagingTalent paging);

	public int getCntTalent(PagingTalent paging);

	public void update(Talent talent);
	
	public void delete(int talentno);
	
	public PagingTalent getPaging(PagingTalent paging);

}
