<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

tr td{
	text-align:center;
}
</style>
</head>
<body>
<div id="best">
<div class="col-md-12"  style="text-align:center;">
<h1>우수봉사자</h1>
<h3>${view.bestTitle }</h3>

<table class="table-condensed">
	<tr>
	<td>작성일</td>
	<td><fmt:formatDate value="${view.writedate }" pattern="yyyy.MM.dd"/></td>
	<td>조회수</td>
	<td>${view.hit }</td>
	</tr>
</table>
	<div >
		${view.pic }
		${view.bestContent }
	</div>
	<button onclick="location.href='/user/best/bestlist'">목록</button>
	
	<div>
	<a href="/user/best/bestview?bestno=${view.bestno - 1 }">이전글</a><br>
	<a href="/user/best/bestview?bestno=${view.bestno + 1 }">다음글</a>
	</div>
	</div>
	</div>
</body>
</html>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
