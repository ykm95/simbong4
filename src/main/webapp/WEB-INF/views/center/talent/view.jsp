<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container" style="margin: 30px auto; background-color: #FFF">  

		<div style="width: 70%; margin: 0 auto;">  
			<h1>${tal.talent_title }</h1>  
		</div>  

	<div style="width: 70%; margin: 0 auto; text-align:end;">
		<fmt:formatDate value="${tal.write_date }"  pattern="yyyy.MM.dd"/>
	</div><br>
 		
 		<table class="table table-bordered" style="width: 70%; margin: 0 auto;">  
	
 			<tr>  
 				<td colspan="1" style="background: #CCC">봉사분야</td>  
 				<td colspan="3" style="text-align: center">${tal.departname }</td>  
 			</tr>  

 			<tr>  
 				<td colspan="1" style="background: #CCC">봉사지역</td>  
 				<td colspan="3" style="text-align: center">${tal.aname }</td>  
 			</tr>  

 			<tr>  
 				<td colspan="1" style="background: #CCC">활동기간</td>  
 				<td colspan="3" style="text-align: center;">${tal.talent_start}~ ${tal.talent_end}</td>  
 			</tr>  

 			<tr>  
 				<td colspan="1" style="background: #CCC">봉사주기</td>  
 				<td colspan="3" style="text-align: center;">${tal.test}</td>
 			</tr>  

 			<tr>  
 				<td colspan="1" style="background: #CCC">봉사유형</td>  
 				<td colspan="3" style="text-align: center;"><c:choose>
				<c:when test="${tal.talent_type eq 1}">개인</c:when>
				<c:when test="${tal.talent_type eq 2 }">단체</c:when>
				</c:choose></td>  
 			</tr> 

 			<tr>  
 				<td colspan="1" style="background: #CCC">모집현황</td>  
 				<td colspan="3" style="text-align: center;">
 				<c:choose>
				<c:when test="${tal.talent_process eq 1}">모집중</c:when>
				<c:when test="${tal.talent_process eq 2 }">모집완료</c:when>
				</c:choose></td>  
 			</tr>  
		
		
 		</table><br><br><br>
		
		
		<div  style="width: 70%; margin: 0 auto;">
		내용
		<table class="table table-bordered" >
			<tr>
				<td >${tal.talent_content }</td>
			</tr>
		</table>
		</div>
	 		<br><br><br>  
		
	<div class="text-right">
		<button id="btnList" class="btn btn-primary">목록</button>
		<c:if test="${tal.uemail eq loginid }">
		<button id="btnUpdate" class="btn btn-info">수정</button>
		<button id="btnDelete" class="btn btn-danger">삭제</button>
		</c:if>
	</div>

</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>