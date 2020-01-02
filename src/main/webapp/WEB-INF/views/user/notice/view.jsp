<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jspdf.min.js" rel="stylesheet"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/html2canvas.js" rel="stylesheet"></script>

<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>공지사항</h1>
<hr>
${view.noticeTitle }
<hr>
<table>
	<tr>
		<th>작성일</th>
		<th><fmt:formatDate value="${view.writeDate }" pattern="yyyy.MM.dd"/></th>
		<th>조회수</th>
		<th>${view.hit }</th>
	</tr>
</table>
	<div>
	${view.noticeContent }
	</div>
	<button onclick="location.href='/user/notice/list'">목록</button>
<div>
	<a href="/user/notice/list?noticeno=${view.noticeNo -1 }">이전글</a><br>
	<a href="/user/notice/list?noticeno=${view.noticeNo +1 }">다음글</a>
	
	<a href="/pdf/web/viewer.html?file=test.pdf">pdf</a>
</div>
</body>
</html>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
