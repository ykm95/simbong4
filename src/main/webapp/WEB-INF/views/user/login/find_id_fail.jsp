<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<style type="text/css">

div{
text-align: center;
} 

#failbtn {
	width: 200px;
	margin-top: 110px;
}
</style>
<br>
<div>
<img src="/resources/img/fail.png" id="failbtn" name="failbtn">
</div>
<br>
<div style="font-weight: bold; font-size: x-large;">
회원님의 아이디를 찾을 수 없습니다.
</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>