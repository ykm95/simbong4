<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/user/mypage/deletequestion?questionno=${question.questionno}");
	});
});
</script>

</head>
<body>
<h1>1:1문의 상세보기</h1>
<hr>

<table>
	<tr>
		<td>제목</td><td>${question.question_title }</td>
	</tr>
	<tr>
		<td>내용</td><td>${question.question_content }</td>
	</tr>
	<tr>
		<td>사진</td><td><img src="${question.pic }"></td>
	</tr>
</table>

<button id="btnDelete">삭제</button>
</body>
</html>