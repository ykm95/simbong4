<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<div class="row" style="text-align: center; padding: 50px 0;">

	<c:if test="${empty login }">
		<div class="col">
			<h1>로그인 후 이용해주세요</h1>
		</div>
	</c:if>
	
	<c:if test="${login }">
		<div class="col-12">
			<h1>${center.cname } ${center.mgr } 님, 환영합니다.</h1>
		</div>
	
		<div class="col">
			<a href="/center/volunteer/list"><button class="btn btn-lg btn-secondary">봉사 활동</button></a>
		</div>
	
		<div class="col">
			<a href="/center/talent/list"><button class="btn btn-lg btn-secondary">재능 기부</button></a>
		</div>
		
		<div class="col">
			<button class="btn btn-lg btn-secondary">봉사 확인</button>
		</div>
	</c:if>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>

