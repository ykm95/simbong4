<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="table">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>등록일</th>
		</tr>
	
		<c:forEach items="${apllist }" var="list" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td id="uname">${fn:replace(list.uname, fn:substring(list.uname, 1, 1), '*')}</td>
				<td id="uemail">${fn:replace(list.uemail, fn:substring(list.uemail, 3, 8), '*****')}</td>
				<td id="uphone">${fn:replace(list.uphone, fn:substring(list.uphone, 3, 7), '****')}</td>
				<td><fmt:formatDate value="${list.write_date }"  pattern="yyyy.MM.dd"/></td>
			</tr>
			</c:forEach>
		</table>