package page.dto;

public class Question { // 센터회원문의

	private int centerno; // 센터번호
	private String cname; // 센터이름
	private int questionno; // 문의번호
	private String cquestion_title; // 문의제목
	private String cquestion_content; // 문의내용
	private String pic; // 문의사진
	private String answer; // 답변내용

	@Override
	public String toString() {
		return "Question [centerno=" + centerno + ", cname=" + cname + ", questionno=" + questionno
				+ ", cquestion_title=" + cquestion_title + ", cquestion_content=" + cquestion_content + ", pic=" + pic
				+ ", answer=" + answer + "]";
	}

	public int getCenterno() {
		return centerno;
	}

	public void setCenterno(int centerno) {
		this.centerno = centerno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getQuestionno() {
		return questionno;
	}

	public void setQuestionno(int questionno) {
		this.questionno = questionno;
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
