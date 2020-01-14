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
	
}
</style>
</head>
<body><br><br><br>

<div class="row">
	<div class="col-4"></div>
	<div class="col-4" id="data">
	<h3 style="text-align: center;">${mypageView.uname }님의 정보</h3>
	<ul>
		<li>이메일 : ${mypageView.uemail }</li>
		<li>휴대전화 : ${mypageView.uphone }</li>
		<li>우편번호 : ${mypageView.uaddress1 } </li>
		<li>상세주소 : ${mypageView.uaddress2 } ${mypageView.uaddress3 }</li>
	</ul>

	
	</div>
	<div class="col-4"></div>
</div>


<button id="btnUpdate">회원정보수정</button>
<button id="btnDelete">회원탈퇴</button>
<button id="btnQuestion">1:1문의</button>
<button id="btnMain">메인으로</button>
<button id="btnResult">봉사활동신청결과</button>
<button id="btnPerformance">봉사활동실적조회</button>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>