<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>심봉사 :: HOME</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style type="text/css">

#header {
	margin : 0;
	padding: 30px 0;
}

#footer {
	margin: 0;
	padding: 30px 0;
	display: inline-block;
}
#footer .mark1 ul li img {
	text-align:center;
	max-width:100%
}

ul{
	list-style-type:none;
}


</style>
</head>
<body>

<div id ="header" class="row">
	<div class="col-2">
		<a href="/center/main"><img width="100px" src="/resources/img/simlogo.png"></a>	
	</div>
	<div class="col-8">
	</div>
	<div class="col-2">
		<c:if test="${empty login }"> <%-- 로그인 실패 --%>
		<a href="/center/login/login"><button class="btn btn-sm btn-secondary">로그인</button></a>
		<a href="/center/login/join"><button class="btn btn-sm btn-secondary">회원가입</button></a>
		</c:if>
		
		<c:if test="${login }"> <%-- 로그인 성공 --%>
		<a href="/centerLogout"><button class="btn btn-sm btn-secondary">로그아웃</button></a>
		<a href="/center/mypage/mypagemain"><button class="btn btn-sm btn-secondary">마이페이지</button></a>
	</c:if>
	</div>
</div>

<div style="height: 1px; background: black; "></div>

<div id="wrapper">