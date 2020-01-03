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
	border-top: 1px solid #cacaca;
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
	<div id="notice" class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<br>
			<h1>공지사항</h1><br>
			<hr>
			<h3>${view.noticeTitle }</h3><br>
<!-- 			<table> -->
<!-- 				<tr> -->
<!-- 					<th>작성일</th> -->
<%-- 					<th><fmt:formatDate value="${view.writeDate }" --%>
<%-- 							pattern="yyyy.MM.dd" /></th> --%>
<!-- 					<th>조회수</th> -->
<%-- 					<th>${view.hit }</th> --%>
<!-- 				</tr> -->
<!-- 			</table> -->
			<div class="data">
				<dl>
					<dt>작성일</dt>
					<dd><fmt:formatDate value="${view.writeDate }" pattern="yyyy.MM.dd" />
					</dd>
					<dt>조회수</dt>
					<dd>${view.hit }</dd>
				</dl>
			</div>
			<div id="content">${view.noticeContent }</div>
			<button class="btn btn-secondary"
				onclick="location.href='/user/notice/list'">목록</button>
			<div>
				<a href="/user/notice/view?noticeno=${view.noticeNo -1 }">이전글</a><br>
				<a href="/user/notice/view?noticeno=${view.noticeNo +1 }">다음글</a> <a
					href="/pdf/web/viewer.html?file=test.pdf">pdf</a>
			</div>
		</div>
		<div class="col-2"></div>
	</div>
</body>
</html>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
