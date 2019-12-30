<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	//수정버튼 동작
	$("#btnUpdate").click(function() {
		$("form").submit();
	});
	
	//취소버튼 동작
	$("#btnCancel").click(function() {
		$(location).attr("href", "/center/mypage/mypagemain");
	});
});
</script>

</head>
<body>
<h1>회원정보수정</h1>
<hr>


<form action="/center/mypage/update" method="post">

<table>

<tr>
	<td><label>기관명</label></td>
	<td>${center.cname }</td>
</tr>

<tr>
	<td><label>사업자번호</label></td>
	<td>${center.businessno }</td>
</tr>

<tr>
	<td><label>우편번호</label></td>
	<td><input type="text" name="address1" id="address1" value="${center.address1 }" size="5"/>&nbsp;&nbsp;<input type="button" value="우편번호검색"/></td>
</tr>

<tr>
	<td><label>주소</label></td>
	<td><input type="text" name="address2" id="address2" value="${center.address2 }" size="25"/>&nbsp;&nbsp;<input type="text" name="address3" id="address3" value="${center.address3 }" size="7"/></td>
</tr>

<tr>
	<td><label>담당자번호</label></td>
	<td><input type="text" name="mphone" id="mphone" value="${center.mphone }" /></td>
</tr>

<tr>
	<td><label>담당자명</label></td>
	<td><input type="text" name="mgr" id="mgr" value="${center.mgr }" /></td>
</tr>

<tr>
	<td><label>담당자이메일</label></td>
	<td><input type="email" name="memail" id="memail" value="${center.memail }" /></td>	
</tr>

<tr>
	<td><label>센터설립일</label></td>
	<td><fmt:formatDate value="${center.founded }" pattern="yyyy-MM-dd"/></td>
</tr>

</table>

</form>

<button type="button" id="btnUpdate">수정</button>
<button type="button" id="btnCancel">취소</button>

</body>
</html>