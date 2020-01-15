<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<div class="container" style="background-color: #fff;">
<br>
<h1>봉사활동신청결과</h1><hr><br>

	<table class="table">
	<c:forEach items="${list }" var="list">
	
	<tr>
    	<td style="vertical-align: middle;"><span style="color:#0371c1">제목:</span>${list.vol_title }</td> 
    	<td style="border-bottom:0; vertical-align: middle; "><span style="color:#0371c1">활동영역:</span> ${list.departname }</td>	
    	<td colspan="2" style="border-bottom:0; vertical-align: middle; ">	
    	<c:choose>
			<c:when test="${list.vol_process eq 0 }" ><span style="color:blue;">[승인대기]</span></c:when>
			<c:when test="${list.vol_process eq 1}" ><span style="color:blue;">[모집중]</span></c:when>
			<c:when test="${list.vol_process eq 2}" ><span style="color:red;">[모집완료]</span></c:when>
			<c:when test="${list.vol_process eq 3}" ><span style="color:red;">[종료]</span></c:when>
		</c:choose></td>
		<td></td>
	</tr>
	
	<tr>    
    	<td style="border-bottom:1px solid #ccc;border-top:0;"><span style="color:#0371c1">봉사의뢰기관:</span> ${list.cname }</td>
    	<td style="border-bottom:1px solid #ccc;border-top:0;"><span style="color:#0371c1">활동기간:</span> ${list.vol_sterm } ~ ${list.vol_eterm }</td>
    	<td colspan="2" style="border-bottom:1px solid #ccc;border-top:0;"><span style="color:#0371c1">활동시간:</span> ${list.stime } ~ ${list.etime }</td>
	</tr>
	</c:forEach>
	</table>
	
	<jsp:include page="/WEB-INF/views/layout/result_paging.jsp" />
</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />