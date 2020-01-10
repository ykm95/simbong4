<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include><body>
 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
	#googlebtn{
		height: 60px;
		width: 300px;
	}
</style>

<div class="login-form">
<div style="text-align:center;">
<span style="color: green; font-weight: bold;">
변경할 비밀번호를 입력해주세요.</span> <br> <br>             

<form action="/user/pass_change${uemail}" method="post">

<div class="form-group">
<div class="input-group"> 
<span class="input-group-addon"><i class="fa fa-lock"></i></span>
<input class="form-control" type = "password" id="user_pass" name = "user_pass" placeholder = "비밀번호를 입력하세요." >
</div></div>                                        

<button type="submit" name="submit"class="btn btn-success btn-block login-btn">비밀번호 변경</button>
<button type="reset"  class="btn btn-danger btn-block login-btn">취소</button>
</form>
</div>
</div>

 
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
