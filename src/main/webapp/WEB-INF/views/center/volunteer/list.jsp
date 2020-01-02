<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<table class="table">

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

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>