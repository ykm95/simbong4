<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){

// check();

	//목록버튼 동작
	$("#btnList").click(function() {
		
			location.href="/user/talent/list"
	});
	
	//수정버튼 동작
	$("#btnUpdate").click(function() {
		$(location).attr("href", "/user/talent/update?talentno=${talent.talentno }");
	});

	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/user/talent/delete?talentno=${talent.talentno }");
	});

	$("#btnDone").click(function() {
		alert('모집완료되었습니다.');
		$(location).attr("href", "/user/talent/done?talentno=${talent.talentno }");
	});

});
</script>


  	<div class="container" style="background-color: #FFF">  
<br><br>

  		<div style="width: 70%; margin: 0 auto;">  
  			<h1 style="margin-top:0;">${talent.talent_title }</h1>  
  		</div>
		
		<div style="width: 70%; margin: 0 auto; text-align:end;">
		  	<c:if test="${talent.uemail eq loginid }">		
			<button id="btnDone" class="btn btn-secondary">모집완료</button>
			</c:if>
		</div>
		
		<div style="width: 70%; margin: 0 auto; text-align:end;">
			<fmt:formatDate value="${talent.write_date }"  pattern="yyyy.MM.dd"/>
		</div><br>
  		
  		<table class="table table-bordered" style="width: 70%; margin: 0 auto;">  
		
  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사분야</td>  
  				<td colspan="3" style="text-align: center">${talent.departname }</td>  
  			</tr>  

  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사지역</td>  
  				<td colspan="3" style="text-align: center">${talent.aname }</td>  
  			</tr>  

  			<tr>  
  				<td colspan="1" style="background: #CCC">활동기간</td>  
  				<td colspan="3" style="text-align: center;">${talent.talent_start}~ ${talent.talent_end}</td>  
  			</tr>  

  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사주기</td>  
  				<td colspan="3" style="text-align: center;">${talent.test}</td>
  			</tr>  

  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사유형</td>  
  				<td colspan="3" style="text-align: center;"><c:choose>
					<c:when test="${talent.talent_type eq 1}">개인</c:when>
					<c:when test="${talent.talent_type eq 2 }">단체</c:when>
					</c:choose></td>  
  			</tr> 

  			<tr>  
  				<td colspan="1" style="background: #CCC">모집현황</td>  
  				<td colspan="3" style="text-align: center;">
  				<c:choose>
					<c:when test="${talent.talent_process eq 1}">모집중</c:when>
					<c:when test="${talent.talent_process eq 2 }">모집완료</c:when>
				</c:choose></td>  
  			</tr>  
			
			
  		</table><br><br><br>
		
		
		<div  style="width: 70%; margin: 0 auto;">
		내용
		<table class="table table-bordered" >
			<tr>
				<td >${talent.talent_content }</td>
			</tr>
		</table>
		</div>
  		<br><br><br>  
  		
  		 <div style="text-align:center; width:800px;height:50px; background: #CCC; margin:10px auto">  
  			<div class="row" style="padding: 15px;">  
  				<div class="col">  
  					봉사자 : ${fn:replace(talent.uname, fn:substring(talent.uname, 1, 2), '*')}
  				</div>  
  				<div class="col">  
  					이메일 : ${fn:replace(talent.uemail, fn:substring(talent.uemail, 2, 7), '*****')} 
  				</div>  
  				<div class="col">  
  					연락처 : ${fn:replace(talent.uphone, fn:substring(talent.uphone, 3, 7), '****')} 
  				</div>  
  			</div>		  
  		</div><br><br>
		
	<div style="width: 70%; margin: 0 auto; text-align:end;">
		<button id="btnList" class="btn btn-primary">목록</button>
		<c:if test="${talent.uemail eq loginid }">
		<button id="btnUpdate" class="btn btn-info">수정</button>
		<button id="btnDelete" class="btn btn-danger">삭제</button>
		</c:if>
	</div>

  	</div>  







