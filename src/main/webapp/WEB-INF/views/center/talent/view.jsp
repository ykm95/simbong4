<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>재능기부 게시글</h1>
<hr>

<table>
	<tr>
		<th>${tal.talent_title }</th>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${tal.uname }</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${tal.uemail }</td>
	</tr>
	<tr>
		<th>활동기간</th>
		<td>${tal.talent_period }</td>
	</tr>
	<tr>
		<th>활동분야</th>
		<td>
			<c:choose>
				<c:when test="${tal.department eq 1 }">시설봉사</c:when>
				<c:when test="${tal.department eq 2 }">재가봉사</c:when>
				<c:when test="${tal.department eq 3 }">전문봉사</c:when>
				<c:when test="${tal.department eq 4 }">지역사회봉사</c:when>
				<c:when test="${tal.department eq 5 }">금,물품봉사</c:when>
				<c:when test="${tal.department eq 6 }">해외봉사</c:when>
				<c:when test="${tal.department eq 7 }">헌혈</c:when>
				<c:when test="${tal.department eq 8 }">기타봉사</c:when>
			</c:choose>
		</td>
	</tr>
	<tr>
		<th>봉사지역</th>
		<td>${tal.aname }</td>
			
	</tr>
	<tr>
		<th>내용</th>
		<td>${tal.talent_content }</td>
	</tr>
</table>
	
<br>
<a href="/center/talent/list"><button>목록</button></a>

</body>
</html>