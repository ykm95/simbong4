package page.service.center.centertalent;

import java.util.List;

import page.dto.Talent;
import page.util.Paging;

public interface CenterTalentService {

	public Paging getPaging(Paging paging);

	public List getTalentList(Paging paging);

	public Talent getTalent(Talent talent);

}
