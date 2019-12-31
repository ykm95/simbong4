<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>봉사활동 목록</h1>
<hr>

<table>

<c:forEach items="${list }" var="i">

<tr class="text-center">
	<td>
	<a href="/center/volunteer/view?volunteerno=${i.volunteerno }">
	${i.vol_title }
	</a>
	</td>
	<td>필요/신청인원 : ${i.npeople }/${i.apeople }</td>
	<td>봉사기간 : ${i.vol_sterm } ~ ${i.vol_eterm }</td>
   	<td>모집센터 : ${i.cname }
</tr>

</c:forEach>

</table>

<jsp:include page="/WEB-INF/views/center/volunteer/paging.jsp"></jsp:include>

<br>
<a href="/center/volunteer/write"><button>글 쓰기</button></a>
<br><br>

<a href="/center/main"><button>메인으로</button></a>

</body>
</html>