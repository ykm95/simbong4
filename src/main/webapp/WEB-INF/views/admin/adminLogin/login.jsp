<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript">	
	function checkValue() {
		inputForm = eval("document.loginInfo");
		if (!inputForm.id.value) {
			alert("아이디를 입력하세요");
			//$("#adminId").focus(); 
			inputForm.id.focus();//입력포커스 이동
			return false;
		}
		if (!inputForm.password.value) {
			alert("비밀번호를 입력하세요");
			inputForm.password.focus();
			return false;
		}
	}
</script>
</head>
<body>

	<div id="wrap">
		<h1>관리자로그인</h1>
		<form id="admin-login-form" method="post" 
		action="/adminLogin/loginProc" onsubmit="return checkValue()">
		<!-- 이미지 추가 <img src="../../img/위치 지정.jpg"><br>-->
			Id: <input type="text" name="adminId" /><br> 
			Pw: <input type="text" name="adminPw" /><br> 
			<button>확인</button>
		</form>

		<%
			//로그인 성공시 /adminLogin/login.jsp이동
			//로그인실패시 빨간글씨 표시
			// loginProc.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
			String msg = request.getParameter("msg");

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