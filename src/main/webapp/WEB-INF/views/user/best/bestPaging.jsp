<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div style= "text-align: center">
	<ul class ="pagination pagination-sm">
	<!-- 처음으로 가기 -->
	<c:if test="${paging.curPage ne 1 }">
	<li><a class="page-link" href="/user/best/bestlist">&larr;처음</a></li>
	</c:if>
	<!-- 이전 페이징 리스트로 가기 -->
	<c:if test="${paging.startPage gt paging.pageCount }">
	<li>
	<a class="page-link" href="/user/best/bestlist?curPage=${paging.startPage - Paging.pageCount }">&laquo;
	</a></li>
	</c:if>
	<c:if test="${paging.startPage le paging.pageCount }">
	<li class="disabled"><a class="page-link">&laquo;</a></li>
	</c:if>
	<!-- 이전페이지로 가기 -->
	<li><a class="page-link" href="/user/best/bestlist?curPage=${paging.curPage - 1}">&lt;
	</a>
	</li>
		<!-- 페이징 리스트 -->
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
		<c:choose>
			<c:when test="${paging.curPage eq i }">
			<li class="active"><a class="page-link" href="/user/best/bestlist?curPage=${i }">${i }</a></li>
		</c:when>
		<c:otherwise>
			<li><a class="page-link" href="/user/best/bestlist?curPage=${i }">${i }</a></li>
			</c:otherwise>
			</c:choose>
			</c:forEach>
			
	<!-- 다음페이지로 가기 -->
	<c:if test ="${paging.curPage ne paging.totalPage }">
	<li><a class="page-link" href="/user/best/bestlist?curPage=${paging.curPage + 1 }">&gt;</a></li>
	</c:if>
	
	<!-- 다음 페이징 리스트로 가기 -->
	<c:if test="${paging.endPage gt paging.totalPage }">
	<li><a class="page-link" href="/user/best/bestlist?curPage=${paging.starPage +paging.pageCount }">&gt;</a></li>
	</c:if>
	<c:if test="${paging.endPage eq paging.totalPage }">
	<li class ="disabled"><a class="page-link">&raquo;</a></li>
	</c:if>
	
	<!-- 끝 페이지로 가기 -->
	<c:if test ="${paging.curPage ne paging.totalPage }">
	<li><a class="page-link" href ="/user/best/bestlist?curPage=${paging.totalPage }">&rarr;끝</a></li>
	</c:if>
	</ul>
</div>