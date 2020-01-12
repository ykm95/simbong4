<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$("form").submit();
	});
	
	//취소버튼 동작
	$("#btnCancel").click(function() {
		history.go(-1);
	});
	
});
</script>

</head>
<body>

<h3 style="color: red;">정말로삭제하시겠습니까?</h3>
<h5>삭제하시면 게시글을 되돌릴수없습니다.</h5>

<form action="/center/mypage/deletequestion" method="post">
<input type="hidden" value="${centerquestion.questionno }" name="questionno"/>
</form>

<button type="button" id="btnDelete" class="btn btn-danger">삭제</button>
<button type="button" id="btnCancel" class="btn btn-info">취소</button>

</body>
</html>