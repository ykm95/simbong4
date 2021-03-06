<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<script type="text/javascript">
$(document).on('click','#pdfopen', function(){


    var popupX = (window.screen.width / 2) - (600 / 2);
    // 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

    var popupY= (window.screen.height /2) - (500 / 2);
    // 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
    <c:forEach items="${list }" var="list">
    window.open('http://localhost:8088/user/mypage/pdf?applicantno=${list.applicantno }', 'window', 'status=no, height=500, width=600, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
    </c:forEach>
 });
	
</script>

<div class="container" style="background-color : #fff;">
<br>
<h1>봉사활동실적조회</h1>
<hr>

<form action="/user/mypage/performancelist" method="get">
		활동기간
		<div class="row">
			<div class="col">
		<input name="vol_sterm" title="시작일" id="vol_sterm"
		type="date" value="" class="form-control"></div>
		~ 
		<div class="col">
		<input
		name="vol_eterm" title="종료일" id="vol_eterm"
		type="date" value=""  class="form-control">
		</div></div><br>
<div style="text-align : end;">		
<button class="btn btn-secondary">검색</button><br><br>
</div>
</form>


	<table class="table">
	<c:forEach items="${list }" var="list">
	
	<tr>
    	<td style="vertical-align: middle;"><span style="color:#0371c1">제목:</span>${list.vol_title }</td> 
    	<td style="border-bottom:0; vertical-align: middle; "><span style="color:#0371c1">활동영역:</span> ${list.departname }</td>	
    	<td colspan="2" style="border-bottom:0; vertical-align: middle; ">	
    	<c:choose>
			<c:when test="${list.aprocess eq 0 }" ><span style="color:red;">[승인대기]</span></c:when>
			<c:when test="${list.aprocess eq 1}" ><span style="color:red;">[승인완료]</span></c:when>
		</c:choose></td>
		<td></td>
	</tr>
	
	<tr>    
    	<td style="border-bottom:1px solid #ccc;border-top:0;"><span style="color:#0371c1">봉사의뢰기관:</span> ${list.cname }</td>
    	<td style="border-bottom:1px solid #ccc;border-top:0;"><span style="color:#0371c1">활동기간:</span> ${list.vol_sterm } ~ ${list.vol_eterm }</td>
    	<td colspan="2" style="border-bottom:1px solid #ccc;border-top:0;"><span style="color:#0371c1">활동시간:</span> ${list.stime } ~ ${list.etime }</td>
		<td style="border-bottom:1px solid #ccc;border-top:0;"><button id="pdfopen" class="btn btn-secondary">PDF 다운로드</button></td>
	</tr>
	</c:forEach>
	</table>
		
		

	<jsp:include page="/WEB-INF/views/layout/performance_paging.jsp" />
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />