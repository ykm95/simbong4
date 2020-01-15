package page.util;

import java.util.Date;

public class PagingApplicant {

	private int curPage; // 현재 페이지 번호(브라우저에서 선택한 페이지 번호)

	private int totalCount; // 총 게시글 수(DB에서 조회된 전체 결과의 행 수)
	private int listCount; // 한 페이지당 출력될 게시글 수(직접 설정할 수 있다)
	private int totalPage; // 총 페이지 수(계산으로 알아낸다)

	private int pageCount; // 한 화면에 출력될 페이지 수 (직접 설정할 수 있음)
	private int startPage; // 화면에 보이는 시작 페이지 번호 (계산으로 알아냄)
	private int endPage; // 화면에 보이는 마지막 페이지 번호 (계산으로 알아냄)

	private int startNo; // 화면에 보이는 페이지의 게시글 시작 번호(계산으로 알아냄)
	private int endNo; // 화면에 보이는 페이지의 게시글 끝 번호(계산으로 알아냄)
	
	private int applicantno;
	private int userno;
	private int volunteerno;
	private int aprocess;
	private Date write_date;
	private String uname;
	private String uemail;
	private String uphone;

	private String vol_sterm;
	private String vol_eterm;
	private String stime;
	private String etime;
	private String departname;
	private String cname;
	private int vol_process;
	private String vol_title;
	
	public PagingApplicant() {
		
	}
	
	//총 게시글 수만 입력하는 생성자
	public PagingApplicant(int totalCount) {
		this.setTotalCount(totalCount);
		
		this.makePaging();
	}
	
	//총 게시글 수와 현재 페이지를 입력하는 생성자
	public PagingApplicant(int totalCount, int curPage) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);
		
		this.makePaging();
	}
	
	//총 게시글 수와 현재 페이지, 보여질 게시글 수를 입력하는 생성자
	public PagingApplicant(int totalCount, int curPage, int listCount) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);
		this.setListCount(listCount);
		
		this.makePaging();
	}

	//총 게시글 수, 현재 페이지, 보여질 게시글 수, 보여질 페이지 수 를 입력하는 생성자
	public PagingApplicant(int totalCount, int curPage, int listCount, int pageCount) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);
		this.setListCount(listCount);
		this.setPageCount(pageCount);
		
		this.makePaging();
	}

	//페이징 정보 생성
	private void makePaging() {
		if(totalCount==0)	return; //게시글이 없는 경우
		
		//기본값 설정
		if(curPage==0)		setCurPage(1);//첫 페이지 기본값 세팅
		if(pageCount==0)	setPageCount(10);//화면에 보여질 페이지수 기본값 세팅
		if(listCount==0)	setListCount(10);//화면에 보여질 게시글수 기본값 세팅
		
		//총 페이지수 계산
		totalPage = totalCount / listCount;
		if(totalCount % listCount > 0)	totalPage++;

		//현재 페이지 보정
		//(총 페이지 번호보다 현재 페이지번호가 높을 때 총 페이지 번호로 고정)
		if(totalPage < curPage)	curPage = totalPage;
		
		//화면에 보여질 페이징 시작번호와 끝번호
		startPage = ( (curPage-1)/pageCount ) * pageCount + 1;
		endPage = startPage + pageCount - 1;

		//계산된 끝페이지번호가 총 페이지수보다 클 때 보정 
		if(endPage > totalPage)	endPage = totalPage;
		
		//화면에 보여질 게시글의 시작번호와 끝번호
		startNo = (curPage-1) * listCount + 1;
		endNo = curPage * listCount;

	}

	@Override
	public String toString() {
		return "PagingApplicant [curPage=" + curPage + ", totalCount=" + totalCount + ", listCount=" + listCount
				+ ", totalPage=" + totalPage + ", pageCount=" + pageCount + ", startPage=" + startPage + ", endPage="
				+ endPage + ", startNo=" + startNo + ", endNo=" + endNo + ", applicantno=" + applicantno + ", userno="
				+ userno + ", volunteerno=" + volunteerno + ", aprocess=" + aprocess + ", write_date=" + write_date
				+ ", uname=" + uname + ", uemail=" + uemail + ", uphone=" + uphone + ", vol_sterm=" + vol_sterm
				+ ", vol_eterm=" + vol_eterm + ", stime=" + stime + ", etime=" + etime + ", departname=" + departname
				+ ", cname=" + cname + ", vol_process=" + vol_process + ", vol_title=" + vol_title + "]";
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

	public int getApplicantno() {
		return applicantno;
	}

	public void setApplicantno(int applicantno) {
		this.applicantno = applicantno;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getVolunteerno() {
		return volunteerno;
	}

	public void setVolunteerno(int volunteerno) {
		this.volunteerno = volunteerno;
	}

	public int getAprocess() {
		return aprocess;
	}

	public void setAprocess(int aprocess) {
		this.aprocess = aprocess;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
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

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getVol_sterm() {
		return vol_sterm;
	}

	public void setVol_sterm(String vol_sterm) {
		this.vol_sterm = vol_sterm;
	}

	public String getVol_eterm() {
		return vol_eterm;
	}

	public void setVol_eterm(String vol_eterm) {
		this.vol_eterm = vol_eterm;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}

	public String getEtime() {
		return etime;
	}

	public void setEtime(String etime) {
		this.etime = etime;
	}

	public String getDepartname() {
		return departname;
	}

	public void setDepartname(String departname) {
		this.departname = departname;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getVol_process() {
		return vol_process;
	}

	public void setVol_process(int vol_process) {
		this.vol_process = vol_process;
	}

	public String getVol_title() {
		return vol_title;
	}

	public void setVol_title(String vol_title) {
		this.vol_title = vol_title;
	}
	


}
