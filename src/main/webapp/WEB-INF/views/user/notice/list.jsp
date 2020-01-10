<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- <!-- <script type="text/javascript"> -->
<!-- // 	$(document).ready(function(){ -->

<!-- // 		$("#btnsearch").click(function() { -->
<!-- // 			location.href="/notice/list?" -->
<!-- // 					+"searchcategory="+$("#searchcategory").val() -->
<!-- // 					+"&keyword="+$("#keyword").val(); -->
<!-- // 	}); -->
<!-- // 	}); -->

<style type="text/css">


</style>


</head>
<body>
	<div class="col-1"></div>
	<div class="row">
	<br>
	<div class="col-2"></div>
	<div id="list" class="col-8">
	<h1>공지사항</h1>
	<form action="/user/notice/list" method="GET">
		<div id="search" class="form-inline" style="float:right">
			<select id="searchcategory" name="searchcategory"  class="form-control">
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select> <input type="text" id="keyword" class="form-control" name="keyword"
				placeholder="검색어를 입력하세요">

			<button class="btn btn-secondary" id="btnsearch">검색</button>

		</div>
	</form>
	<table class="table table-hover table-condensed" style="text-align:center;">
		<c:forEach items="${nlist }" var="l">
			<tr>
				<td>${l.noticeNo }</td>
				<td><a href="/user/notice/view?noticeno=${l.noticeNo }">${l.noticeTitle }</a></td>
				<td>작성일 <fmt:formatDate value="${l.writeDate }" pattern="yyyy.MM.dd"/></td>

				<td>조회수 ${l.hit }</td>
			</tr>
		</c:forEach>
	</table>
	<div align="center">
	<jsp:include page="/WEB-INF/views/user/notice/noticePaging.jsp" />
	</div>
	</div>
		<div class="col-2"></div>
	</div>

</html>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
