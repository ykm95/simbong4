<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" 
src="http://code.jquery.com/jquery-2.2.4.min.js"></script>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<div class="text-center">
	<ul class="pagination justify-content-center" >

		<!-- 처음으로 가기 -->
		<c:if test="${paging.curPage ne 1 }">
		<li><a href="/user/talent/list?departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}">처음 </a></li>
		</c:if>
		<!-- 이전 페이징 리스트로 가기 -->
		<c:if test="${paging.startPage gt paging.pageCount}">
		<li><a href="/user/talent/list?curPage=${paging.startPage - paging.pageCount }&departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}">
				&laquo; </a></li></c:if>
		<c:if test="${paging.startPage lt paging.pageCount}">
		<li class="disabled"><a>&laquo; </a></li></c:if>
		
		<!-- 이전 페이지로 가기 -->
		<c:if test="${paging.startPage ne paging.totalPage }">
		<li><a href="/user/talent/list?curPage=${paging.curPage-1 }&departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}"> &lt;
		</a></li>
		</c:if>
		
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
			var="i">
			<c:choose>
				<c:when test="${paging.curPage eq i }">
					<li class="active"><a href="/user/talent/list?curPage=${i }&departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}">${i }</a>
				</c:when>
				<c:otherwise>
					<li><a href="/user/talent/list?curPage=${i }&departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}">${i }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<!-- 다음 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li><a href="/user/talent/list?curPage=${paging.curPage +1 }&departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}">&gt;</a></li>
		</c:if>
		<!-- 다음 페이징 리스트로 가기 -->
		<c:if test="${paging.endPage ne paging.totalPage}">
		<li><a href="/user/talent/list?curPage=${paging.startPage + paging.pageCount }&departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}">
				&raquo; </a></li></c:if>
		<c:if test="${paging.endPage eq paging.totalPage}">
		<li class="disabled"><a>&raquo; </a></li></c:if>
		
		<!-- 끝 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li><a href="/user/talent/list?curPage=${paging.totalPage }&departmentno=${paging.departmentno }&areano=${paging.areano }&talent_type=${paging.talent_type }&talent_start=${paging.talent_start }&talent_end=${paging.talent_end }&talent_title=${paging.talent_title }&talent_process=${paging.talent_process}">끝
		</a></li>
		</c:if>

	</ul>

</div>