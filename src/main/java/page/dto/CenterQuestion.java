package page.dto;

public class CenterQuestion { // 센터회원문의

	private int questionno; // 문의번호
	private int centerno; // 센터번호
	private String cquestion_title; // 문의제목
	private String cquestion_content; // 문의내용
	private String pic; // 문의사진
	private String answer; // 답변내용
	private String uname;
	private String answercontent;

	public String getAnswercontent() {
		return answercontent;
	}

	public void setAnswercontent(String answercontent) {
		this.answercontent = answercontent;
	}

	@Override
	public String toString() {
		return "CenterQuestion [questionno=" + questionno + ", centerno=" + centerno + ", cquestion_title="
				+ cquestion_title + ", cquestion_content=" + cquestion_content + ", pic=" + pic + ", answer=" + answer
				+ ", uname=" + uname + ", answercontent=" + answercontent + "]";
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getQuestionno() {
		return questionno;
	}

	public void setQuestionno(int questionno) {
		this.questionno = questionno;
	}

	public int getCenterno() {
		return centerno;
	}

	public void setCenterno(int centerno) {
		this.centerno = centerno;
	}

	public String getCquestion_title() {
		return cquestion_title;
	}

	public void setCquestion_title(String cquestion_title) {
		this.cquestion_title = cquestion_title;
	}

	public String getCquestion_content() {
		return cquestion_content;
	}

	public void setCquestion_content(String cquestion_content) {
		this.cquestion_content = cquestion_content;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
