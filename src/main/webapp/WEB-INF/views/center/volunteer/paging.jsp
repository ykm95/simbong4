<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="paging container" style="padding: 10px;">

	<a href="/center/volunteer/write"><button class="btn btn-secondary">글 쓰기</button></a>
	
	<ul class="pagination justify-content-center">
		<!-- 처음으로 가기 -->
		<c:if test="${paging.curPage ne 1 }">
		<li class="page-item"><a class="page-link" href="/center/volunteer/listv_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">&larr;처음으로</a></li>
		</c:if>
		<c:if test="${paging.curPage eq 1 }">
		<li class="page-item disabled"><a class="page-link">&larr;처음으로</a></li>
		</c:if>
		
		<!-- 이전 페이징 리스트로 가기 -->
		<c:if test="${paging.startPage gt paging.pageCount }">
		<li class="page-item"><a class="page-link" href="/center/volunteer/list?curPage=${paging.startPage - paging.pageCount }&v_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">&laquo;</a></li>
		
		</c:if>
		<c:if test="${paging.startPage le paging.pageCount }">
		<li class="page-item disabled"><a class="page-link">&laquo;</a></li>
		</c:if>
		
		<!-- 이전 페이지로 가기 -->
		<c:if test="${paging.curPage ne 1 }">
		<li class="page-item"><a class="page-link" href="/center/volunteer/list?curPage=${paging.curPage - 1 }&v_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">&lt;</a></li>
		</c:if>
		<c:if test="${paging.curPage eq 1 }">
		<li class="page-item disabled"><a class="page-link">&lt;</a></li>
		</c:if>
		
		<!-- 페이징 리스트 -->
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
			<c:choose>
				<c:when test="${paging.curPage eq i }">
					<li class="page-item active"><a class="page-link" href="/center/volunteer/list?curPage=${i }&v_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">${i }</a>
				</c:when>
				<c:otherwise>
					<li><a class="page-link" href="/center/volunteer/list?curPage=${i }&v_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">${i }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<!-- 다음 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li class="page-item"><a class="page-link" href="/center/volunteer/list?curPage=${paging.curPage + 1 }&v_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">&gt;</a></li>
		</c:if>
		<c:if test="${paging.curPage eq paging.totalPage }">
		<li class="page-item disabled"><a class="page-link">&gt;</a></li>
		</c:if>
		
		<!-- 다음 페이징 리스트로 가기 -->
		<c:if test="${paging.endPage ne paging.totalPage }">
		<li class="page-item"><a class="page-link" href="/center/volunteer/list?curPage=${paging.startPage + paging.pageCount }&v_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">&raquo;</a></li>
		</c:if>
		<c:if test="${paging.endPage eq paging.totalPage }">
		<li class="page-item disabled"><a class="page-link">&raquo;</a></li>
		</c:if>
		
		<!-- 끝 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li class="page-item"><a class="page-link" href="/center/volunteer/list?curPage=${paging.totalPage }&v_sterm=${paging.v_sterm }&v_eterm=${paging.v_eterm }&v_stime=${paging.v_stime }&v_etime=${paging.v_etime }&department=${paging.department }&v_area=${paging.v_area }&v_process=${paging.v_process }&search=${paging.search }">&rarr;끝</a></li>
		</c:if>
		<c:if test="${paging.curPage eq paging.totalPage }">
		<li class="page-item disabled"><a class="page-link">&rarr;끝</a></li>
		</c:if>
		
	</ul>
</div>
