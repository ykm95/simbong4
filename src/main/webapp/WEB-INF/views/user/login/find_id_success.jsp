<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<style type="text/css">

div{
text-align: center;
}

#successbtn {
	width: 200px;
	margin-top: 110px;
}
</style>

<Br>
<div>
<img src="/resources/img/success.png" id="successbtn" name="successbtn">
</div>
<br>
<div style="font-size: x-large;">
회원님의 아이디는<b> ${uemail}</b> 입니다.
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>