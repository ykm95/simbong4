<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	//글쓰기버튼 동작
	$("#questionWrite").click(function() {
		$(location).attr("href", "/center/mypage/writequestion");
	});
	
});
</script>

</head>
<body>

<h1>(센터)1:1문의</h1>
<hr>

<table>
<tr>
	<th>문의제목</th>
</tr>
<tr>
<c:forEach items="${list }" var="list">
<tr>
	<td><a href="/center/mypage/questionview?questionno=${list.questionno }">${list.cquestion_title }</a></td>
</tr>
</c:forEach>
</tr>
</table>
<br><br>
<button id="questionWrite">글쓰기</button>



</body>
</html>