<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>s
    
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

	<div id="wrap">
		<h1>관리자로그인</h1>
		<form action="/admin/adminLogin/login" method="post" >
		<!-- 이미지 추가 <img src="../../img/위치 지정.jpg"><br>-->
			Id: <input type="text" name="adminId" placeholder="아이디를 입력하세요"/><br> 
			Pw: <input type="text" name="adminPw" placeholder="비밀번호를 입력하세요"/><br> 
			<button>확인</button>
		</form>

		<%
			//로그인 성공시 /adminLogin/main.jsp이동

			String msg = request.getParameter("msg");
			//로그인실패시 빨간글씨 표시
			if (msg != null && msg.equals("0")) {
				out.println("<br>");
				out.println("<font color='red' size='3'>비밀번호를 확인해 주세요.</font>");
			} else if (msg != null && msg.equals("-1")) {
				out.println("<br>");
				out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
			}
		%>
	</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />