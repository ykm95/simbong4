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
#notice{
	background-color: white;
}
#notice h1{
	font-weight: border;
	font-size: 40px;
}
#data{
	border-top: 1px solid #CCC; 
	border-bottom: 1px solid #CCC; 
	padding: 10px;
}

#content{
	min-height: 300px; 
	border-bottom: 1px solid #CCC;
	padding: 10px;
}
</style>
</head>
<body><br>
	<div class="row">
		<div class="col-3"></div>
		<div id="notice" class="col-6">
			<h1>공지사항</h1>
			<hr>
			<h3>${view.noticeTitle }</h3>
			<br>

			<div>
				<div id="data" class="row">
					<div class="col-6">
						<span style="font-weight: bold;">작성일</span> <span><fmt:formatDate
								value="${view.writeDate }" pattern="yyyy.MM.dd" /></span>
					</div>
					<div class="col-6">
						<span style="font-weight: bold;">조회수</span> <span>${view.hit }</span>
					</div>
				</div>


			</div>
			<div id="content" class="row">
				<div class="col-12">${view.noticeContent }</div>
			</div>
			<br>
			<div align="center">
				<button class="btn btn-secondary"
					onclick="location.href='/user/notice/list'">목록</button>
			</div>
<!-- 			<div> -->
<%-- 				<a href="/user/notice/view?noticeno=${view.noticeNo -1 }">이전글</a><br> --%>
<%-- 				<a href="/user/notice/view?noticeno=${view.noticeNo +1 }">다음글</a> --%>
<!-- 			</div> -->
		</div>
		<div class="col-3"></div>
	</div>

	<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>