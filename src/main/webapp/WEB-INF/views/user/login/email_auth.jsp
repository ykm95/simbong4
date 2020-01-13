<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 30px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .login-form .hint-text {
		color: #777;
		padding-bottom: 15px;
		text-align: center;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .login-btn {        
        font-size: 15px;
        font-weight: bold;
    }

    .social-btn .btn {
        margin: 10px 0;
        font-size: 15px;
        text-align: left; 
        line-height: 24px;       
    }
	.social-btn .btn i {
		float: left;
		margin: 4px 15px  0 5px;
        min-width: 15px;
	}
	.input-group-addon .fa{
		font-size: 18px;
	}
	
	#submit{
		display:inline;
		
	}
	#cancel{
		display:inline;
	}
	
</style>    

<Br>
<div class="login-form">
<center>
<span style="color: green; font-weight: bold;">입력한 이메일로 받은 인증번호를 입력하세요. (인증번호가 맞아야 다음 단계로 넘어가실 수 있습니다.)</span> <br> <br>

<div style="text-align: center;">
<form action="/user/login/join_injeung${dice}" method="post">

<div class="form-group">
<div class="input-group"> 
<input class ="form-control" type="number" name="email_injeung" placeholder="인증번호를 입력하세요.">
</div></div>											
<input hidden="hidden" type="email" name="uemail" value="${uemail}"/>
<button type="submit" id="submit"name="submit"  class="btn btn-success btn-block login-btn col-6">인증번호 전송</button><br><br>
<button type="reset" id="cancel" name="cancel" class="btn btn-danger btn-block login-btn col-3 text-aline: center">취소</button>
</form>
</div>
</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>