<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>우수봉사자</h1>
<h3>${view.bestTitle }</h3>

<table>
	<tr>
	<td>작성일</td>
	<td>${view.writedate }</td>
	<td>조회수</td>
	<td>${view.hit }</td>
	</tr>
</table>
	<div>
		${view.pic }
		${view.bestContent }
	</div>
	<button onclick="location.href='/best/bestlist'">목록</button>
</body>
</html>