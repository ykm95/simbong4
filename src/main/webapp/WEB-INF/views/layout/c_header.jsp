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

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">




<style type="text/css">

#header {
	margin : 0;
	padding: 30px 0;
/*  	background-color:#F7F8E0; */
}

#footer {
	margin: 0;
	padding: 30px 0;
/* 	display: inline-block; */
/* 	background-color:#F7F8E0; */
	text-align: center;
	min-width: 1200px;
	

}

ul{
	list-style-type:none;
}

#wrapper{
	min-height: 600px;
/* 	background-color: #F7F8E0; */
}

/* #menu{ */
/*  	width:100%;  */
/* } */

#menu div{
  	width:240px;  
 	height:55px; 
	border: 1px solid #ccc;
	cursor:pointer;
	font-size:18px;
	text-align: center;
	line-height: 55px;
}

#menu div:hover{
	background-color: #ccc;
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

.container{

	background-color: #FFF;
}

</style>
</head>
<body>					

<div id ="header" class="row" style="text-align: center;">
	<div class="col-3">
	</div>
		
	<div class="col-6">
	<a href="/center/main"><img width="80px" src="/resources/img/logo.png"></a>
	
	</div>
		
	<div class="col-3">
		<c:if test="${not login }">
			<a href="/center/login/join"><button class="btn btn-sm btn-secondary">회원가입</button></a>
			<a href="/center/login/login"><button class="btn btn-sm btn-secondary">로그인</button></a>
		</c:if>

		<c:if test="${login }">
			<a href="/centerLogout"><button class="btn btn-sm btn-secondary">로그아웃</button></a>
			<a href="/center/mypage/mypagemain?centerno=${centerno }"><button class="btn btn-sm btn-secondary">마이페이지</button></a>
		</c:if>
	</div>
</div>

<div class="row" style="border-bottom: 1px solid #ccc; border-top: 1px solid #ccc">
	<div class="col-1" ></div>
	<div class="col-10" >
		<ul id="menu">
			<li id="notice" onclick="location.href='/center/notice/list'">공지사항</li>
			<li id="best" onclick="location.href='/center/best/bestlist'">우수봉사자</li>
			<li id="statistic">통계</li>
			<li onclick="location.href='/center/volunteer/list'">봉사요청</li>
			<li onclick="location.href='/center/talent/list'">재능기부</li>
		</ul>
	</div>
	<div class="col-1"></div>		
</div>

		
<!-- <div style="height: 3px; background: #ccc;"></div> -->


<div id="wrapper" style="background: linear-gradient(to top, #FFFFFF, #FFEFBA)">