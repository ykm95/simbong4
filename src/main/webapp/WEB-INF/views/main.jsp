<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>main</h1>
<hr>

<c:if test="${not login }">
<a href="/user/login/email">회원가입</a>
<a href="/user/login/login">로그인</a>
</c:if>

<c:if test="${login }">
<a href="/userLogout">로그아웃</a>
<a href="/user/mypage/mypagemain">마이페이지</a>
</c:if>

</body>
</html>