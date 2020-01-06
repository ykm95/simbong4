<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />


<li>
<a href="/admin/adminLogin/logout"><button>로그아웃</button></a><%--이것만 작게 --%>

<a href="/adminQna/main"><button>QnA관리</button></a><%--사이드 메뉴바, 따라다니는 퀵메뉴바  --%>
<a href="/adminUser/center"><button>센터 승인</button></a>
<a href="/admin/adminBoard/adminTalent"><button>봉사자 승인</button></a>
<a href="/adminBoard/best"><button>우수봉사자</button></a>
<a href="/admin/adminBoard/adminNotice"><button>공지사항</button></a>
</li>
<li>${adminId }님 환영합니다.</li><!-- admin01, admin02나와야 정상. -->
</body>
</html>