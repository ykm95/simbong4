<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<style type="text/css">

div{
text-align: center;
}
div.i{
}
</style>

<div>
<h1>아이디찾기</h1>
<hr>

회원님의 아이디는<b> ${uemail}</b> 입니다.
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>