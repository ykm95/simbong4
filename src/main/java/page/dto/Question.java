package page.dto;

public class Question {
	private int questionno;
	private int userno;
	private String question_title;
	private String question_content;
	private String pic;
	private String answer;

	@Override
	public String toString() {
		return "Question [questionno=" + questionno + ", userno=" + userno + ", question_title=" + question_title
				+ ", question_content=" + question_content + ", pic=" + pic + ", answer=" + answer + "]";
	}

	public int getQuestionno() {
		return questionno;
	}

	public void setQuestionno(int questionno) {
		this.questionno = questionno;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getQuestion_title() {
		return question_title;
	}

	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
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
