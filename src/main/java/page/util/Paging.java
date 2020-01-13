package page.util;

public class Paging {

	private int curPage;
	private int totalCount;
	private int listCount;
	private int totalPage;
	public int getCenterno() {
		return centerno;
	}

	public void setCenterno(int centerno) {
		this.centerno = centerno;
	}

	private int pageCount;
	private int startPage;
	private int endPage;
	private int startNo;
	private int endNo;
	private int centerno;
	private String searchcategory;
	private String keyword;

	private String search;
	
	public Paging() { }
	
	public Paging(int totalCount) {
		this.setTotalCount(totalCount);

		this.makePaging();
	}

	// �� �Խñ� ���� ���� �������� �Է��ϴ� ������
	public Paging(int totalCount, int curPage) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);

		this.makePaging();
	}

	// �� �Խñ� ���� ���� ������, ������ �Խñ� ����  �Է��ϴ� ������
	public Paging(int totalCount, int curPage, int listCount) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);
		this.setListCount(listCount);
		this.makePaging();
	}

	// �� �Խñ� ���� ���� ������, ������ �Խñ� ��, ������ ������ ����  �Է��ϴ� ������
	public Paging(int totalCount, int curPage, int listCount, int pageCount) {
		this.setTotalCount(totalCount);
		this.setCurPage(curPage);
		this.setListCount(listCount);
		this.setPageCount(pageCount);

		this.makePaging();

		
	}


	// ����¡ ���� ����
	private void makePaging() {
		if(totalCount==0) return;	//�Խñ��� ���� ���

		//�⺻�� ����
		if(curPage==0) setCurPage(1); //ù ������ �⺻�� ����
		if(pageCount==0) setPageCount(5); // ȭ�鿡 ������ �������� �⺻�� ����
		if(listCount==0) setListCount(10); // ȭ�鿡 ������ �Խñۼ� �⺻�� ����

		// �� �������� ���
		totalPage = totalCount / listCount;
		if(totalCount % listCount > 0 ) totalPage++;

		
		// ���������� ����, �� ��������ȣ���� ���� ��������ȣ�� ���� �� �� ������ ��ȣ�� ����
		if(totalPage<curPage) curPage = totalPage;

		// ȭ�鿡 ������ ����¡ ���۹�ȣ�� �� ��ȣ
		startPage = ( (curPage-1)/pageCount) * pageCount+1;
		endPage = startPage + pageCount -1;

		// ���� ����������ȣ�� �� ������������ Ŭ �� ����
		if(endPage>totalPage) endPage = totalPage;
		
		// ȭ�鿡 ������ �Խñ��� ���۹�ȣ�� �� ��ȣ
		startNo = (curPage-1) * listCount+1;
		endNo =curPage * listCount;

	
	}

	
	@Override
	public String toString() {
		return "Paging [curPage=" + curPage + ", totalCount=" + totalCount + ", listCount=" + listCount + ", totalPage="
				+ totalPage + ", pageCount=" + pageCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", startNo=" + startNo + ", endNo=" + endNo + ", centerno=" + centerno + ", searchcategory="
				+ searchcategory + ", keyword=" + keyword + ", search=" + search + "]";
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

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	public String getSearchcategory() {
		return searchcategory;
	}

	public void setSearchcategory(String searchcategory) {
		this.searchcategory = searchcategory;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

}
