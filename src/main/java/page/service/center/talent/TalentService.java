package page.service.center.talent;

import java.util.List;

import page.dto.Talent;
import page.util.Paging;

public interface TalentService {

	public Paging getPaging(Paging paging);

	public List getTalentList(Paging paging);

	public Talent getTalent(Talent talent);

}
