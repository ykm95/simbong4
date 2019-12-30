<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>센터로그인-폼</h1>
<hr>

<form action="/center/login" method="post">
사업자번호 <input type="text" id="businessno" name="businessno" /><br>
비밀번호 <input type="password" id="cpassword" name="cpassword" /><br>
<button>로그인</button>
</form>
</body>
</html>