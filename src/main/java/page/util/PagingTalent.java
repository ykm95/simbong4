package page.util;

import java.util.Arrays;
import java.util.Date;

public class PagingTalent {

	private int talentno;
	private int userno;
	private int talent_process;
	private int phone;
	private int gender;
	private int talent_type;	
	private int departmentno;
	private String departname;
	private String uname;
	private String uemail;
	private String aname;
	private int areano;
	private String talent_cycle;
	private Date write_date;
	private String talent_title;
	private String talent_content;
	private String talent_start;
	private String talent_end;
	private String[] t_cycle;
	
	public int getTalentno() {
		return talentno;
	}
	public void setTalentno(int talentno) {
		this.talentno = talentno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getTalent_process() {
		return talent_process;
	}
	public void setTalent_process(int talent_process) {
		this.talent_process = talent_process;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getTalent_type() {
		return talent_type;
	}
	public void setTalent_type(int talent_type) {
		this.talent_type = talent_type;
	}
	public int getDepartmentno() {
		return departmentno;
	}
	public void setDepartmentno(int departmentno) {
		this.departmentno = departmentno;
	}
	public String getDepartname() {
		return departname;
	}
	public void setDepartname(String departname) {
		this.departname = departname;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public int getAreano() {
		return areano;
	}
	public void setAreano(int areano) {
		this.areano = areano;
	}
	public String getTalent_cycle() {
		return talent_cycle;
	}
	public void setTalent_cycle(String talent_cycle) {
		this.talent_cycle = talent_cycle;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public String getTalent_title() {
		return talent_title;
	}
	public void setTalent_title(String talent_title) {
		this.talent_title = talent_title;
	}
	public String getTalent_content() {
		return talent_content;
	}
	public void setTalent_content(String talent_content) {
		this.talent_content = talent_content;
	}
	public String getTalent_start() {
		return talent_start;
	}
	public void setTalent_start(String talent_start) {
		this.talent_start = talent_start;
	}
	public String getTalent_end() {
		return talent_end;
	}
	public void setTalent_end(String talent_end) {
		this.talent_end = talent_end;
	}
	public String[] getT_cycle() {
		return t_cycle;
	}
	public void setT_cycle(String[] t_cycle) {
		this.t_cycle = t_cycle;
	}


	private int curPage; // 현재 페이지 번호 (브라우저에서 선택한 페이지 번호)

	private int totalCount; // 총 게시글 수 (DB에서 조회된 전체 결과의 행 수)
	private int listCount; // 한 페이지 당 출력될 게시글 수
	private int totalPage; // 총 페이지 수 (계산으로 알아낸다)

	private int pageCount; // 한 화면에 출력될 페이지 수 (직접 설정할 수 있음)
	private int startPage; // 화면에 보이는 시작 페이지 번호 (계산으로 알아냄)
	private int endPage; // 화면에 보이는 마지막 페이지 번호 (계산으로 알아냄)

	private int startNo; // 화면에 보이는 페이지의 게시글 시작 번호 (계산으로 알아냄)
	private int endNo; // 화면에 보이는 페이지의 게시글 끝 번호 (계산으로 알아냄)


	public PagingTalent() {
		// TODO Auto-generated constructor stub
	}
	//총 게시글 수만 입력하는 생성자
	public PagingTalent(int totalCount) {
		this.setTotalCount(totalCount);

		this.makePaging();
	}

	public PagingTalent(int totalCount, int curPage) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);

		this.makePaging();
	}

	public PagingTalent(int totalCount,int curPage,int listCount) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);
		this.setListCount(listCount);

		this.makePaging();
	}
	public PagingTalent(int totalCount,int curPage,int listCount, int pageCount) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);
		this.setListCount(listCount);
		this.setPageCount(pageCount);

		this.makePaging();

	}


	@Override
	public String toString() {
		return "PagingTalent [talentno=" + talentno + ", userno=" + userno + ", talent_process=" + talent_process
				+ ", phone=" + phone + ", gender=" + gender + ", talent_type=" + talent_type + ", departmentno="
				+ departmentno + ", departname=" + departname + ", uname=" + uname + ", uemail=" + uemail + ", aname="
				+ aname + ", areano=" + areano + ", talent_cycle=" + talent_cycle + ", write_date=" + write_date
				+ ", talent_title=" + talent_title + ", talent_content=" + talent_content + ", talent_start="
				+ talent_start + ", talent_end=" + talent_end + ", t_cycle=" + Arrays.toString(t_cycle) + ", curPage="
				+ curPage + ", totalCount=" + totalCount + ", listCount=" + listCount + ", totalPage=" + totalPage
				+ ", pageCount=" + pageCount + ", startPage=" + startPage + ", endPage=" + endPage + ", startNo="
				+ startNo + ", endNo=" + endNo + "]";
	}

	//페이징 정보 생성
	private void makePaging() {
		if(totalCount==0) return;//게시글이 없는 경우

		//기본값 설정 
		//		if(search==null)	setSearch("");
		if(curPage==0) setCurPage(1);//첫 페이지 기본값 세팅
		if(pageCount==0) setPageCount(10);//페이지수 기본값
		if(listCount==0) setListCount(10);//게시글수 기본값

		//총페이지수 계산
		totalPage=totalCount/listCount;
		if(totalCount%listCount>0)totalPage++;

		//현재 페이지 보정
		//(총 페이지 번호보다 현재 페이지번호가 높을 떄 총 페이지 번호로 고정)
		if(totalPage<curPage) curPage=totalPage;

		//화면에 보여질 페이징 시작번호와 끝번호
		startPage=((curPage-1)/pageCount)*pageCount+1;
		endPage=startPage+pageCount-1;

		//계산된 끝페이지번호가 총 페이지수보다 클 떄 보정
		if(endPage>totalPage)endPage=totalPage;

		//화면에 보여질 게시글의 시작번호와 끝번호
		startNo=(curPage-1)*listCount+1;
		endNo=curPage*listCount;
	}


	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartNo() {
		return startNo;
	}
	public void setStartNo(int startNo) {
		this.startNo = startNo;
	}
	public int getEndNo() {
		return endNo;
	}
	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}

}
