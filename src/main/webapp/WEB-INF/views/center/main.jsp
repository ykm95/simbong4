<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>메인화면</h1>
<hr>

<c:if test="${empty login }"> <%-- 로그인 실패 --%>
<a href="/center/login"><button>로그인</button></a>
<a href="/center/join"><button>회원가입</button></a>
</c:if>

<c:if test="${login }"> <%-- 로그인 성공 --%>
<a href="/center/logout"><button>로그아웃</button></a>
<a href="/center/mypage/mypagemain"><button>마이페이지</button></a>
</c:if>

</body>
</html>