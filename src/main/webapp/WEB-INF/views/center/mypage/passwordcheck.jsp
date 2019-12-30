<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3 style="color: red;">회원님의 소중한 개인정보를 위하여 비밀번호를 입력해주세요.</h3>
<hr>

<form action="/center/mypage/passwordcheck" method="post">
비밀번호 <input type="password" id="cpassword" name="cpassword" />
<button>확인</button>
</form>
</body>
</html>