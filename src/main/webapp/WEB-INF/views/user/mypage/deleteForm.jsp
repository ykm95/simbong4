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
		$("form").submit();
	});
	
	//취소버튼 동작
	$("#btnCancel").click(function() {
		$(location).attr("href", "/user/mypage/mypagemain");
	});
	
});
</script>

</head>
<body>

<h3 style="color: red;">정말로 회원탈퇴를 진행하시겠습니까? </h3>

<form action="/user/mypage/delete" method="post">
<input type="hidden" value="${user.uemail }" name="uemail"/>
</form>

<button type="button" id="btnDelete">확인</button>
<button type="button" id="btnCancel">취소</button>

</body>
</html>