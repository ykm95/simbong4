<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>
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
		$(location).attr("href", "/center/mypage/updatepwchk");
	});
	
	//회원탈퇴버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/center/mypage/deletepwchk");
	});
	
	//문의버튼 동작
	$("#btnQuestion").click(function() {
		$(location).attr("href", "/center/mypage/questionlist");
	});
	
	//메인버튼 동작
	$("#btnMain").click(function() {
		$(location).attr("href", "/center/main");
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
#CenterMmenu div{
	height:50px;
	line-height:50px;
	text-align: center;
	border-top: 1px solid #ccc;
	cursor:pointer;
	font-size: 16px;
	background-color: white;
	
}
#CenterMmenu div:hover{
	background-color: #5FB404;
}
#name{
	text-align: center;
	font-size: 25px;
	font-weight: bold;
	border-bottom: 2px solid #5FB404;
	line-height: 88px;
}
#Cdata span{
	font-weight: bold;
}

</style>
</head>
<body><br><br><br>
<div class="row">
	<div class="col-3"></div>
	<div id="CenterMmenu" class="col-2">
		<div id="btnUpdate">회원정보수정</div>
		<div id="btnDelete">회원탈퇴</div>
		<div id="btnQuestion">1:1문의</div>
		<div id="btnMain">메인으로</div>
	</div>
	<div class="col-4" id="data">
	<div id= name class="col-12">
	${Cmypage.cname }님의 정보 ✔
	</div><br>
	<div class="row col-12">
	<div class="col-2"></div>
	<div id="Cdata" class="col-10">
	<ul>
		<li>
		<span>사업자번호 :</span> ${Cmypage.businessno }</li>
		<li>
		<span>담당자 이름 :</span> ${Cmypage.mgr }</li>
		<li>
		<span>담당자 이메일 : </span>${Cmypage.memail } </li>
		<li>
		<span>담당자 번호 : </span>${Cmypage.mphone }</li>
		<li>
		<span>우편번호 : </span>${Cmypage.address1 }</li>
		<li>
		<span>상세주소 : </span>${Cmypage.address2 } ${Cmypage.address3 }</li>
	</ul>
	</div>
	<div class="col-2"></div>
	</div>
	
	</div>
	<div class="col-3"></div>
</div>






<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>