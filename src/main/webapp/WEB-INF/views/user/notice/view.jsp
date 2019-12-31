<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<th>${view.writeDate }</th>
		<th>조회수</th>
		<th>${view.hit }</th>
	</tr>
</table>
	<button onclick="location.href='/user/notice/list'">목록</button>
<div>
</div>
</body>
</html>