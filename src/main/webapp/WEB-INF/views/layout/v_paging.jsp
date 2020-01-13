<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" 
src="http://code.jquery.com/jquery-2.2.4.min.js"></script>



<div class="text-center">
	<ul class="pagination pagination-sm" >

		<!-- 처음으로 가기 -->
		<c:if test="${paging.curPage ne 1 }">
		<li><a href="/user/volunteer/list?vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }">처음 </a></li>
		</c:if>
		<!-- 이전 페이징 리스트로 가기 -->
		<c:if test="${paging.startPage gt paging.pageCount}">
		<li><a href="/user/volunteer/list?curPage=${paging.startPage - paging.pageCount }&vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }">
				&laquo; </a></li></c:if>
		<c:if test="${paging.startPage lt paging.pageCount}">
		<li class="disabled"><a>&laquo; </a></li></c:if>
		
		<!-- 이전 페이지로 가기 -->
		<c:if test="${paging.startPage ne paging.totalPage }">
		<li><a href="/user/volunteer/list?curPage=${paging.curPage-1 }&vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }"> &lt;
		</a></li>
		</c:if>
		
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
			var="i">
			<c:choose>
				<c:when test="${paging.curPage eq i }">
					<li class="active"><a href="/user/volunteer/list?curPage=${i }&vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }">${i }</a>
				</c:when>
				<c:otherwise>
					<li><a href="/user/volunteer/list?curPage=${i }&vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }">${i }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<!-- 다음 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li><a href="/user/volunteer/list?curPage=${paging.curPage +1 }&vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }">&gt;</a></li>
		</c:if>
		<!-- 다음 페이징 리스트로 가기 -->
		<c:if test="${paging.endPage ne paging.totalPage}">
		<li><a href="/user/volunteer/list?curPage=${paging.startPage + paging.pageCount }&vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }">
				&raquo; </a></li></c:if>
		<c:if test="${paging.endPage eq paging.totalPage}">
		<li class="disabled"><a>&raquo; </a></li></c:if>
		
		<!-- 끝 페이지로 가기 -->
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li><a href="/user/volunteer/list?curPage=${paging.totalPage }&vol_sterm=${paging.vol_sterm }&vol_eterm=${paging.vol_eterm }&stime=${paging.stime }&etime=${paging.etime }&department=${paging.department }&vol_area=${paging.vol_area }&vol_process=${paging.vol_process }&search=${paging.search }">끝
		</a></li>
		</c:if>

	</ul>

</div>