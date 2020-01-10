<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<div class="container" >

	<table class="table table-hover">
	
	<c:forEach items="${list }" var="i">
	
	<tr class="text-center" onclick="location.href='/center/talent/view?talentno=${i.talentno }';">
		<c:if test="${i.talent_process == 0 }">
			<td>진행중</td>
		</c:if>
		<c:if test="${i.talent_process == 1 }">
			<td>완료</td>
		</c:if>
		<td>${i.aname }</td>
		<td>
			${i.talent_title }
		</td>
		<td>봉사기간 : ${i.talent_cycle}</td>
	</tr>
	
	</c:forEach>
	
	</table>
	
</div>

<jsp:include page="/WEB-INF/views/center/talent/paging.jsp"></jsp:include>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>