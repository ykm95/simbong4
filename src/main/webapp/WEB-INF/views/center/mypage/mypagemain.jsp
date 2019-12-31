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
	//수정버튼 동작
	$("#btnUpdate").click(function() {
		$(location).attr("href", "/center/mypage/updatepwchk");
	});
	
	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/center/mypage/deletepwchk");
	});
	
});
</script>
</head>
<body>
<h1>센터마이페이지 - 메인</h1>
<hr>

<button id="btnUpdate">회원정보수정</button>
<button id="btnDelete">회원탈퇴</button>
</body>
</html>