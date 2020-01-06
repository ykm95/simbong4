<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
dt {
	float: left;
	width: 7%;
}

dd {
	float: left;
	width: 43%;
}
dl {
/* 	border-top: 1px solid #cacaca; */
	border-bottom: 1px solid #cacaca;
	padding:30px;
}

#content {
	padding: 300px;
	border-bottom: 1px solid #cacaca;
	
}
</style>
</head>
<body>
	<div id="best" class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<br>
			<h1>우수봉사자</h1>
			<br>
			<hr>
			<h3>${view.bestTitle }</h3><br>


			<div class="data">
				<div class="row" style="border-top: 1px solid #CCC;">
					<div class="col-6">
					작성일 : <fmt:formatDate value="${view.writedate }" pattern="yyyy.MM.dd" />
					</div>
					<div class="col-6">
					<span>조회수</span>
					<span>${view.hit }</span>
					</div>
				</div>
				<div class="row" style="border-top: 1px solid #CCC; border-bottom: 1px solid #CCC;">
					<div class="col-6">
					<span>봉사자</span>
					<span>${view.uname }</span>
					</div>
					<div class="col-6">
					<span>봉사시간</span>
					<span>${view.vol_time }시간</span>
					</div>
				
				</div>
				<div class="row">
					<div class="content col-12" style="min-height: 300px; border-bottom: 1px solid #CCC;">
						
						${view.pic } ${view.bestContent }  
					</div>
				</div>
			</div>
			<br>
			<button class="btn btn-secondary"
				onclick="location.href='/user/best/bestlist'">목록</button>
			<div>
				<a href="/user/best/bestview?bestno=${view.bestno - 1 }">이전글</a><br>
				<a href="/user/best/bestview?bestno=${view.bestno + 1 }">다음글</a>
			</div>
		</div>
		<div class="col-2"></div>
	</div>
</body>
</html>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
