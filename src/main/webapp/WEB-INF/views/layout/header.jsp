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

<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-singin-client_id" content="661200041177-uu3hcr6ei708qsiaskndvlqfob8n0f3c.apps.googleusercontent.com">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta nem="viewport" content="width=device=width, initial-scale=1.0">

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<script type="text/javascript">
function signOut(){
		
	   var child = window.open('https://accounts.google.com/logout','popup', 'z-lock=yes');
	      
	      setTimeout(function() {
	         child.close();
	         location.href="/userLogout";
	         }, 1000); // 1000ms(3초)가 경과하면 이 함수가 실행됩니다.
}
</script>

<style type="text/css">

#header {
	margin : 0;
	padding: 30px 0;
}

#footer {
	margin: 0;
	padding: 30px 0;
	text-align: center;
	min-width: 1200px;
}

ul{
	list-style-type:none;
}

#wrapper{
	min-height: 600px;
	background: #FFEFBA;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to top, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to top, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
		
}

#menu ul{
	width:1243px;
	font-size:18px;
	margin: 5px;
	padding: 0;
	
}

#menu li{
	width:20%;
	height:50px;
	line-height:50px;
	text-align: center;
	float: left;
	border-left: 1px solid #ccc;
	border-right: 1px solid #ccc;
	cursor:pointer;
	font-size: 18px;
}
#menu li:hover{
	background-color: #ccc;
}
#login{
	font-size: 18px;
/* 	font-weight: bolder; */
	line-height: 50px;
    text-align: center;
}
a:hover { 
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>					

<div id ="header" class="row" style="border-bottom: 1px solid #ccc;">
	<div class="col-3">
	</div>
		
	<div class="col-6" style="text-align:center;">
		<a href="/main"><img width="80px" src="/resources/img/logo.png"></a>
	</div>
		
	<div class="col-3" id="login">
				<c:if test="${not login }">
			<a href="/user/login/email">회원가입</a>
			<a href="/user/login/login">로그인</a>
		</c:if>

		<c:if test="${login }">
		
		<c:choose>
		<c:when test="${google }">
			<a  style ="cursor:pointer;" onclick="signOut()">로그아웃</a>	
		</c:when>
		<c:otherwise>
			<a href="/userLogout" >로그아웃</a>		
		</c:otherwise>
		</c:choose>
			<a href="/user/mypage/mypagemain?userno=${userno }">마이페이지</a>
		</c:if>
		
			
	</div>
</div>
<div class="row" style="border-bottom: 1px solid #ccc;">
	<div class="col-3" ></div>
	<div class="col-6" >
		<ul id="menu">
			<li id="notice" onclick="location.href='/user/notice/list'">공지사항</li>
			<li id="best" onclick="location.href='/user/best/bestlist'">우수봉사자</li>
			<li id="statistic">통계</li>
			<li onclick="location.href='/user/volunteer/list'">봉사신청</li>
			<li onclick="location.href='/user/talent/list'">재능기부</li>
		</ul>
	</div>
	<div class="col-3"></div>		
</div>
		
<!-- <div style="height: 3px; background: #ccc;"></div> -->


<div id="wrapper">