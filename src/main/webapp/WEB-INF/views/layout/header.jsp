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
	
// function signOut(){
		
// 		var auth2 =gapi.auth2.getAuthInatance();
// 		auth2.signOut().then(function(){
// 			console.log('User signed out.');
// 		});
// 		auth2.disconnect();
// }


</script>

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

</style>
</head>
<body>					

<div id ="header" class="row" style="text-align: center;">
	<div class="col-3">
	</div>
		
	<div class="col-6">
	<a href="/main"><img width="80px" src="/resources/img/logo.png"></a>
	
	</div>
		
	<div class="col-3">
		<c:if test="${not login }">
			<a href="/user/login/email">회원가입</a>
			<a href="/user/login/login">로그인</a>
		</c:if>

		<c:if test="${login }">
			<a  href="/userLogout" onclick="signOut();">로그아웃</a>
			<a href="/user/mypage/mypagemain">마이페이지</a>
		</c:if>
	</div>
</div>
<div class="row">
	<div class="col-3" style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc;"></div>
	<div class="col-6">
		<div id="menu" class="row">
		
			<div onclick="location.href='/user/notice/list'">공지사항</div>
			<div onclick="location.href='/user/best/bestlist'">우수봉사자</div>
			<div>통계</div>
			<div>메뉴4</div>
		</div>
	</div>
	<div class="col-3" style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc;"></div>		
</div>
		
<!-- <div style="height: 3px; background: #ccc;"></div> -->


<div id="wrapper">