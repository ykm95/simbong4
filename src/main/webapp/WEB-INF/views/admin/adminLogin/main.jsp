<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test= "${login }"><%--로그인 성공 --%>
<li>
<a href="/adminLogin/logout"><button>로그아웃</button></a><%--이것만 작게 --%>

<a href="/adminQna/main"><button>QnA관리</button></a><%--사이드 메뉴바, 따라다니는 퀵메뉴바  --%>
<a href="/adminUser/center"><button>센터 승인</button></a>
<a href="/adminUser/member"><button>봉사자 승인</button></a>
<a href="/adminBoard/best"><button>우수봉사자</button></a>
</li>
<li>${admin_id }님 환영합니다.</li><!-- admin01, admin02나와야 정상. -->
</body>
</html>