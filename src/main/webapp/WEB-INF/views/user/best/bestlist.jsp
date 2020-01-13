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
#list{
 	margin:40px; 
	background-color: white;
}
#list h1{
	font-weight: border;
	font-size: 40px;
}
#search{
	float:right;
}
#searchcategory{
	margin: 2px;
}
#keyword{
	margin: 2px;
}

</style>
</head>
<body>
	<div class="row">
		<div class="col-3"></div>
		<div id="list" class="col-6">
			<h1>우수봉사자</h1>
			
			<form action="/user/best/bestlist" method="GET">
				<div id="search" class="form-inline" style="float:right">
					<select id="searchcategory" name="searchcategory"  class="form-control">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select> <input type="text" id="keyword" class="form-control"
						name="keyword" placeholder="검색어를 입력하세요">

					<button class="btn btn-secondary" id="btnsearch">검색</button>

				</div>
			</form>

			<table class="table table-hover table-condensed" style="line-height:100px; font-size:18px;">
				<c:forEach items="${blist }" var="l">
					<tr>
						<td>${l.bestno }</td>
						<td><img width="100px" height="100px" src="${l.pic }"
							class="img-circle"></td>
						<td><a href="/user/best/bestview?bestno=${l.bestno}">${l.bestTitle}</a></td>
						<td>조회수${l.hit }</td>
					</tr>
				</c:forEach>
			</table>
			<jsp:include page="/WEB-INF/views/user/best/bestPaging.jsp" />
		</div>
		<div class="col-3"></div>
	</div>
</body>
</html>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>