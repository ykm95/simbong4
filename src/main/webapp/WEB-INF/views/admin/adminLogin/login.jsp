<!-- 	<div id="wrap">
		<h1>관리자로그인</h1>
		<form id="login__form">
			Id: <input type="text" name="adminId" placeholder="아이디를 입력하세요"/><br> 
			Pw: <input type="password" name="adminPw" placeholder="비밀번호를 입력하세요"/><br> 
		</form>
		<button id="login__btn">확인</button>
	</div>
	
	<script>
		//확인버튼클릭
		$('#login__btn').on('click',function(){
			$.ajax({
				url:'/admin/adminLogin/login',
				type:'post',
				data:$('#login__form').serialize(),
				success:function(data){
					if(data.status=='0'){
						alert(data.message);
					}else{
						location.href='/admin/adminLogin/main';
					}
				},
				error:function(){
					
				}
			});
		});
	
	</script> -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>

<title>심봉사 :: ADMIN</title>
<!-- 파비콘 적용 -->
<link rel="shortcut icon" href="/resources/img/sim4.png" sizes="16x16">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
</head>


<body>
	<div class="container">
		<br> <br>
		<div class="row">
			<div class="col">
				<img src="https://i.imgur.com/87ZUO6G.png" width="450" height="450"
					class="Avatar">
				<!-- 관리자 로그인 사진 한개였으면 좋겠고 좌측이 아니라 상단이었으면.. -->
			</div>
			<div class="col">

				<form id="login__form" onsubmit="return false">
					<br> <br> <br>
					<h3 align="center">관리자 로그인</h3>
					<br>
					<div class="container">
						<i class="fa fa-user-circle"></i> 
						<label for="">ID</label> 
						<input type="text" name="adminId" class="form-control" placeholder="아이디를 입력하세요"><br> 
						
						<i class="fa fa-key"></i>
						<label for="">PW</label> 
						<input type="password" name="adminPw" class="form-control" placeholder="패스워드를 입력하세요">
					</div>
					<br>
					<div class="col">
						<button id="login__btn" class="btn btn-info btn-lg btn-block">확인</button>
					</div>
							<script> <!--에이젝스만 붙이면 에러났었던 이유: 기-->
		//확인버튼클릭
		$('#login__btn').on('click',function(){
			$.ajax({
				url:'/admin/adminLogin/loginProcess',
				type:'post',
				data:$('#login__form').serialize(),
				success:function(data){
					if(data.status=='0'){
						alert(data.message);
					}else{
						window.location.href='/admin/adminLogin/main';
					}
				},
				error:function(){
					
				}
			});
		});	
		</script>
				</form>
			</div>
		</div>
		<br>
	</div>
	<br>
	<br>


 <jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />