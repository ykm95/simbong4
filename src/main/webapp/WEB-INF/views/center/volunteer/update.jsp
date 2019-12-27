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

<h1>봉사활동 작성</h1>
<hr>

<form action="/center/volunteer/update" method="post">
	<input type="hidden" name="volunteerno" value="${vol.volunteerno }">
	
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="vol_title" value="${vol.vol_title }"></td>
		</tr>
		<tr>
			<th>활동기간</th>
			<td><input type="date" name="vol_sterm" value="${vol.vol_sterm }"> ~ </td>
			<td><input type="date" name="vol_eterm" value="${vol.vol_eterm }"></td>
		</tr>
		<tr>
			<th>활동시간</th>
			<td><input type="time" name="stime" value="${vol.stime }"> ~ </td>
			<td><input type="time" name="etime" value="${vol.etime }"></td>
		</tr>
		<tr>
			<th>활동분야</th>
			<td>
				<select name="department">
					<c:choose>
						<c:when test="${vol.department eq 1}">
							<option value="1" selected="selected">시설봉사</option>
							<option value="2">재가봉사</option>
							<option value="3">전문봉사</option>
							<option value="4">지역사회봉사</option>
							<option value="5">해외봉사</option>
						</c:when>
						<c:when test="${vol.department eq 2}">
							<option value="1">시설봉사</option>
							<option value="2" selected="selected">재가봉사</option>
							<option value="3">전문봉사</option>
							<option value="4">지역사회봉사</option>
							<option value="5">해외봉사</option>
						</c:when>
						<c:when test="${vol.department eq 3}">
							<option value="1">시설봉사</option>
							<option value="2">재가봉사</option>
							<option value="3" selected="selected">전문봉사</option>
							<option value="4">지역사회봉사</option>
							<option value="5">해외봉사</option>
						</c:when>
						<c:when test="${vol.department eq 4}">
							<option value="1">시설봉사</option>
							<option value="2">재가봉사</option>
							<option value="3">전문봉사</option>
							<option value="4" selected="selected">지역사회봉사</option>
							<option value="5">해외봉사</option>
						</c:when>
						<c:when test="${vol.department eq 5}">
							<option value="1">시설봉사</option>
							<option value="2">재가봉사</option>
							<option value="3">전문봉사</option>
							<option value="4">지역사회봉사</option>
							<option value="5" selected="selected">해외봉사</option>
						</c:when>
					</c:choose>
				</select>
			</td>
		</tr>
		<tr>
			<th>봉사지역</th>
			<td><input type="text" name="vol_area" value="${vol.vol_area }"></td>
		</tr>
		<tr>
			<th>봉사장소</th>
			<td><input type="text" name="vol_place" value="${vol.vol_place }"></td>
		</tr>
		<tr>
			<th>봉사대상</th>
			<td><input type="text" name="receiver" value="${vol.receiver }"></td>
		</tr>
		<tr>
			<th>지원자격</th>
			<td><input type="text" name="qualification" value="${vol.qualification }"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><input type="text" name="vol_content" value="${vol.vol_content }"></td>
		</tr>
		<tr>
			<th>필요인원</th>
			<td><input type="number" name="npeople" value="${vol.npeople }"></td>
		</tr>
	</table>
	<button>작성</button>
</form>

</body>
</html>