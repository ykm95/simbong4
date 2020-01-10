<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){

// check();

	//목록버튼 동작
	$("#btnList").click(function() {
		
			location.href="/talent/list"


	});
	
	//수정버튼 동작
	$("#btnUpdate").click(function() {
		$(location).attr("href", "/user/talent/update?talentno=${talent.talentno }");
	});

	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/user/talent/delete?talentno=${talent.talentno }");
	});


});
</script>


<style>
    .title {font-weight:bold;display:block;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>

  	<div class="container" style="margin: 30px auto">  

  		<div style="padding: 30px 160px;">  
  			<h2>${talent.talent_title }</h2>  
  		</div>  

  		<table class="table" style="width: 70%; margin: 0 auto;">  
		
  			<tr>  
  				<td colspan="1" style="background: #CCC">활동기간</td>  
  				<td colspan="3" style="text-align: center;">${talent.talent_start}~ ${talent.talent_end}</td>  
  			</tr>  
  			<tr>  
  				<td colspan="1" style="background: #CCC">모집현황</td>  
  				<td colspan="3" style="text-align: center;">
  				<c:choose>
					<c:when test="${talent.talent_process eq 1}">모집중</c:when>
					<c:when test="${talent.talent_process eq 2 }">모집완료</c:when>
					</c:choose></td>  
  			</tr>  
  			  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사유형</td>  
  				<td colspan="3" style="text-align: center;"><c:choose>
					<c:when test="${talent.talent_type eq 1}">개인</c:when>
					<c:when test="${talent.talent_type eq 2 }">단체</c:when>
					</c:choose></td>  
  			</tr> 
  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사주기</td>  
  				<td colspan="3" style="text-align: center;">${talent.test}</td>
  				</tr>  


  		</table>  
		
  		<br><br><br>  
		
  		<table class="table" style="width: 70%; margin: 0 auto;">  
  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사지역</td>  
  				<td colspan="3" style="text-align: center">${talent.aname }</td>  
  			</tr>  
  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사분야</td>  
  				<td colspan="3" style="text-align: center">${talent.departname }</td>  
  			</tr>  
  		</table>  

  		<br>  
  		<div style="margin: 0 150px;">  
  			<a href="/user/talent/list"><button class="btn btn-secondary" >목록</button></a>   
  		</div>  
		
  	</div>  



<div class="container" style="width: 76%; margin-left: 16em;">

	<h1 style="float: left;">게시물 조회</h1>

	<table class="table table-bordered">

		<tr>
			<td class="info">글번호</td>
			<td colspan="3">${talent.talentno }</td>
		</tr>

		<tr>
			<td class="info">제목</td>
			<td colspan="3">${talent.talent_title }</td>
		</tr>

		<tr>
			<td class="info">작성일</td>
			<td colspan="3"><fmt:formatDate value="${talent.write_date }" pattern="yyyy.MM.dd"/></td>
		</tr>

		<tr>
			<td class="info" colspan="4">본문</td>
		</tr>
		<tr>
			<td colspan="4">${talent.talent_content }</td>
		</tr>

	</table>


	<div class="text-right">
		<button id="btnList" class="btn btn-primary">목록</button>
		
		<c:if test="${talent.uemail eq loginid }">
		<button id="btnUpdate" class="btn btn-info">수정</button>
		<button id="btnDelete" class="btn btn-danger">삭제</button>
		</c:if>
	</div>


</div>  <!-- container -->

