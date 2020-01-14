<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	//회원정보수정버튼 동작
	$("#btnUpdate").click(function() {
		$(location).attr("href", "/user/mypage/updatepwchk");
	});
	
	//회원탈퇴버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/user/mypage/deletepwchk");
	});
	
	//문의버튼 동작
	$("#btnQuestion").click(function() {
		$(location).attr("href", "/user/mypage/questionlist");
	});
	
	//메인으로버튼 동작
	$("#btnMain").click(function() {
		$(location).attr("href", "/main");
	});
	
	//봉사활동신청결과버튼 동작
	$("#btnResult").click(function() {
		$(location).attr("href", "/user/mypage/applicationresult");
	})
	
	//봉사활동실적조회버튼 동작
	$("#btnPerformance").click(function() {
		$(location).attr("href", "/user/mypage/performancelist")
	});
});
</script>
<style type="text/css">
#data{
	background-color: white;
	height: 500px;
	line-height: 50px;
	border : 2px solid #5FB404;
	
	
}
#Mmenu div{
	height:50px;
	line-height:50px;
	text-align: center;
	border-top: 1px solid #ccc;
	cursor:pointer;
	font-size: 16px;
	background-color: white;
	
}
#Mmenu div:hover{
	background-color: #5FB404;
}
#name{
	text-align: center;
	font-size: 25px;
	font-weight: bold;
	border-bottom: 2px solid #5FB404;
	line-height: 88px;
}
#Mdata span{
	font-weight: bold;
}

</style>
</head>
<body><br><br><br>

<div class="row">
	<div class="col-3"></div>
	<div id="Mmenu" class="col-2">
		<div id="btnMain">메인으로</div>
		<div id="btnUpdate">회원정보수정</div>
		<div id="btnDelete">회원탈퇴</div>
		<div id="btnQuestion">1:1문의</div>
		<div id="btnResult">봉사활동신청결과</div>
		<div id="btnPerformance">봉사활동실적조회</div>
	</div>
	<div class="col-4" id="data">
	<div id= name class="col-12">
	${mypageView.uname }님의 정보 ✔
	</div><br>
	<div class="row col-12">
	<div class="col-2"></div>
	<div id="Mdata" class="col-10">
	<ul>
		<li>
		<span>이메일 :</span> ${mypageView.uemail }</li>
		<li>
		<span>휴대전화 :</span> ${mypageView.uphone }</li>
		<li>
		<span>우편번호 : </span>${mypageView.uaddress1 } </li>
		<li>
		<span>상세주소 : </span>${mypageView.uaddress2 } ${mypageView.uaddress3 }</li>
	</ul>
	</div>
	<div class="col-2"></div>
	</div>
	
	</div>
	<div class="col-3"></div>
</div>



<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>