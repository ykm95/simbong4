<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>재능기부 목록</h1>
<hr>

<table>

<c:forEach items="${list }" var="i">

<tr class="text-center">
	<c:if test="${i.talent_process == 0 }">
		<td>진행중</td>
	</c:if>
	<c:if test="${i.talent_process == 1 }">
		<td>완료</td>
	</c:if>
	<td>${i.aname }</td>
	<td>
	<a href="/center/talent/view?talentno=${i.talentno }">
	${i.talent_title }
	</a>
	</td>
	<td>봉사기간 : ${i.talent_period}</td>
</tr>

</c:forEach>

</table>

<jsp:include page="/WEB-INF/views/center/talent/paging.jsp"></jsp:include>

</body>
</html>