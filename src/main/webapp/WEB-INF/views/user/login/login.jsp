<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>


</head>
<body>
<h1>로그인</h1>
<hr>
<form action="/user/login/login" method="post">
<label for ="uemail">이메일</label>
<input type="text" name="uemail" id="uemail" placeholder="email" required="required"/>
<br><br>
<label for ="upassword">비밀번호</label>
<input type="password" name="upassword" id="upassword"/>
<br><br>
<button id="loginbtn">로그인</button>
<button type="reset">취소</button>
</form>
<a href="/user/join">회원가입</a>
<br>
<a href="${google_url }"><button id="btnJoinGoogle" class="btn btn-primary btn-round"
stype="width: 100%"><i class="fa fa-google" aria-hidden="true"></i>Google Login</button></a>
</body>
</html>