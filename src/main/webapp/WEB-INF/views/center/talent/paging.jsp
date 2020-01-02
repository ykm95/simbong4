<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="margin: 0 auto;">
<!-- 	<ur class="pagination pagination-sm"> -->
		<!-- 처음으로 가기 -->
		<c:if test="${paging.curPage ne 1 }">
		<li><a href="/center/talent/list?&search=${paging.search}">&larr;처음으로</a></li>
		</c:if>
		<c:if test="${paging.curPage eq 1 }">
		<li class="disabled"><a>&larr;처음으로</a></li>
		</c:if>
		
		<!-- 이전 페이징 리스트로 가기 -->
		<c:if test="${paging.startPage gt paging.pageCount }">
		<li><a href="/center/talent/list?curPage=${paging.startPage - paging.pageCount }&search=${paging.search}">&laquo;</a></li>
		
		</c:if>
		<c:if test="${paging.startPage le paging.pageCount }">
		<li class="disabled"><a>&laquo;</a></li>
		</c:if>
		
		<!-- 이전 페이지로 가기 -->
		<c:if test="${paging.curPage ne 1 }">
		<li><a href="/center/talent/list?curPage=${paging.curPage - 1 }&search=${paging.search}">&lt;</a></li>
		</c:if>
		<c:if test="${paging.curPage eq 1 }">
		<li class="disabled"><a>&lt;</a></li>
		</c:if>
		
		<!-- 페이징 리스트 -->
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
			<c:choose>
				<c:when test="${paging.curPage eq i }">
					<li class="active"><a href="/center/talent/list?curPage=${i }&search=${paging.search}">${i }</a>
				</c:when>
				<c:otherwise>
					<li><a href="/center/talent/list?curPage=${i }&search=${paging.search}">${i }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<!-- 다음 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li><a href="/center/talent/list?curPage=${paging.curPage + 1 }&search=${paging.search}">&gt;</a></li>
		</c:if>
		<c:if test="${paging.curPage eq paging.totalPage }">
		<li class="disabled"><a>&gt;</a></li>
		</c:if>
		
		<!-- 다음 페이징 리스트로 가기 -->
		<c:if test="${paging.endPage ne paging.totalPage }">
		<li><a href="/center/talent/list?curPage=${paging.startPage + paging.pageCount }&search=${paging.search}">&raquo;</a></li>
		</c:if>
		<c:if test="${paging.endPage eq paging.totalPage }">
		<li class="disabled"><a>&raquo;</a></li>
		</c:if>
		
		<!-- 끝 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li><a href="/center/talent/list?curPage=${paging.totalPage }&search=${paging.search}">&rarr;끝</a></li>
		</c:if>
		<c:if test="${paging.curPage eq paging.totalPage }">
		<li class="disabled"><a>&rarr;끝</a></li>
		</c:if>
		
<!-- 	</ur> -->
</div>