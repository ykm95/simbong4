<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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




</head>
<body>
	<div class="container">
	<div id="list"class="col-md-12" style="text-align:center;">
	<h1>공지사항</h1>
	<form action="/user/notice/list" method="GET">
		<div id="search" class="form-inline">
			<select id="searchcategory" name="searchcategory">
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select> <input type="text" id="keyword" class="form-control" name="keyword"
				placeholder="검색어를 입력하세요">

			<button id="btnsearch">검색</button>

		</div>
	</form>
	<table class="table table-hover table-condensed">
		<c:forEach items="${nlist }" var="l">
			<tr>
				<td>${l.noticeNo }</td>
				<td><a href="/user/notice/view?noticeno=${l.noticeNo }">${l.noticeTitle }</a></td>
				<td>작성일 ${l.writeDate }</td>
				<td>조회수 ${l.hit }</td>
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="/WEB-INF/views/user/notice/noticePaging.jsp" />

	</div>
	</div>
</body>
</html>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>