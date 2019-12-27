<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>봉사활동</h1>
	<hr>

	<table>
		<tr>
			<th>${vol.vol_title }</th>
		</tr>
		<tr>
			<th>활동기간</th>
			<td>${vol.vol_sterm }~ ${vol.vol_eterm }</td>
		</tr>
		<tr>
			<th>활동시간</th>
			<td>${vol.stime }~ ${vol.etime }</td>
		</tr>
		<tr>
			<th>활동분야</th>
			<td><c:choose>
					<c:when test="${vol.department eq 1 }">시설봉사</c:when>
					<c:when test="${vol.department eq 2 }">재가봉사</c:when>
					<c:when test="${vol.department eq 3 }">전문봉사</c:when>
					<c:when test="${vol.department eq 4 }">지역사회봉사</c:when>
					<c:when test="${vol.department eq 5 }">해외봉사</c:when>
				</c:choose></td>
		</tr>
		<tr>
			<th>봉사지역</th>
			<td>${vol.vol_area }</td>
		</tr>
		<tr>
			<th>봉사장소</th>
			<td>${vol.vol_place }</td>
		</tr>
		<tr>
			<th>봉사대상</th>
			<td>${vol.receiver }</td>
		</tr>
		<tr>
			<th>지원자격</th>
			<td>${vol.qualification }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${vol.vol_content }</td>
		</tr>
		<tr>
			<th>필요/신청인원</th>
			<td>${vol.npeople }/${vol.apeople }</td>
		</tr>
		<tr>
			<th>담당자</th>
			<td>${vol.mgr }</td>
			<th>이메일</th>
			<td>${vol.memail }</td>
			<th>연락처</th>
			<td>${vol.mphone }</td>
		</tr>
	</table>
	
	<br>
	<a href="/center/volunteer/list"><button>목록</button></a> 
	<a href="/center/volunteer/update?volunteerno=${vol.volunteerno }"><button>수정</button></a> 
	<a href="/center/volunteer/delete?volunteerno=${vol.volunteerno }"><button>삭제</button></a>


</body>
</html>