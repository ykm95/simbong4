<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#upassword {
	width: 200px;
}
#passform{
	padding: 25px 148px;
}
</style>
</head>
<body>


<br>
	<br>
	<div class="row">
		<div class="col-4"></div>
		<div class="row col-4" style="text-align: center;"> 
			<h3 style="color: red;">회원님의 소중한 개인정보를 위하여 비밀번호를 입력해주세요.</h3>
			<div id="passform" class="form-inline">
				<form action="/user/mypage/deletepwchk" method="post">
					비밀번호 <input type="password" id="upassword" name="upassword" class="form-control" />
					<button class="btn btn-secondary">확인</button>
				</form>
				</div>
			</div>
		<div class="col-4"></div>
		</div>




<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>