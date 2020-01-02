<%-- <%@page import="web.dto.talent"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- <jsp:include page="/WEB-INF/views/layout/header.jsp" /> --%>

<script type="text/javascript" src="/js/httpRequest.js"></script>

<script type="text/javascript">

$(document).ready(function(){

// check();

	//목록버튼 동작
	$("#btnList").click(function() {
		
			location.href="/talent/list"


	});
	
	//수정버튼 동작
	$("#btnUpdate").click(function() {
		$(location).attr("href", "/user/talent/update?talent_no=${talent.talentno }");
	});

	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/user/talent/delete?talent_no=${talent.talentno }");
	});

	
	
	$("#notloginbtn1").click(function() {
		var result = confirm("로그인 후 이용가능합니다.");
		
		if(result==true){
			$(location).attr("href", "/member/login");
		}
	})
	
		$("#notloginbtn2").click(function() {
		var result = confirm("로그인 후 이용가능합니다.");
		
		if(result==true){
			$(location).attr("href", "/member/login");
		}
	})
	

});
</script>


<div class="container" style="width: 76%; margin-left: 16em;">

	<h1 style="float: left;">게시물 조회</h1>

	<table class="table table-bordered">

		<tr>
			<td class="info">글번호</td>
			<td colspan="3">${talent.talentno }</td>
		</tr>

		<tr>
			<td class="info">제목</td>
			<td colspan="3">${talent.talent_title }</td>
		</tr>

		<tr>
			<td class="info">아이디</td>
			<td colspan="3">${talent. }</td>
		</tr>
		
		<tr>
			<td class="info">닉네임</td>
			<td colspan="3">${member.nick }</td>
		</tr>


		<tr>
			<td class="info">작성일</td>
			<td colspan="3">${talent.write_date }</td>
		</tr>

		<tr>
			<td class="info" colspan="4">본문</td>
		</tr>
		<tr>
			<td colspan="4">${talent.content }</td>
		</tr>

	</table>


	<div class="text-right">
		<button id="btnList" class="btn btn-primary">목록</button>
		
		<c:if test="${talent.writer_id eq loginid }">
		<button id="btnUpdate" class="btn btn-info">수정</button>
		<button id="btnDelete" class="btn btn-danger">삭제</button>
		</c:if>
	</div>


</div>  <!-- container -->

