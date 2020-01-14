<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head><br>
<body>

<h1>유저마이페이지-메인</h1>
<hr>

<a href="/user/mypage/updatepwchk"><button>회원정보수정</button></a>
<a href="/user/mypage/deletepwchk"><button>회원탈퇴</button></a>
<a href="/main"><button>메인으로</button></a>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>