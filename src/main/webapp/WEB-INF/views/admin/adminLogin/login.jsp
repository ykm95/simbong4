<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />

	<div id="wrap">
		<h1>관리자로그인</h1>
		<form id="login__form">
			Id: <input type="text" name="adminId" placeholder="아이디를 입력하세요"/><br> 
			Pw: <input type="password" name="adminPw" placeholder="비밀번호를 입력하세요"/><br> 
		</form>
		<button id="login__btn">확인</button>
	</div>
	
	<script>
		//확인버튼클릭
		$('#login__btn').on('click',function(){
			$.ajax({
				url:'/admin/adminLogin/login',
				type:'post',
				data:$('#login__form').serialize(),
				success:function(data){
					if(data.status=='0'){
						alert(data.message);
					}else{
						location.href='/admin/adminLogin/main';
					}
				},
				error:function(){
					
				}
			});
		});
	
	</script>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />