<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 아이디 중복 체크 -->
<script>
$(document).ready(function() {
	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#uemail").blur(function() {
		var uemail = $('#uemail').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/user/idCheck?uEmail='+ uemail,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);			
				
				
				if (data==1) {
					// 1 : 아이디가 중복되는 문구
					$("#id_check").text("사용중인 아이디입니다 :p");
					$("#id_check").css("color", "red");
					$("#submit").attr("disabled", true);
				
				} else{
				
					var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
					if(regExp.test(uemail)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("");
						
						$("#id_check").text("회원가입이 가능한 이메일 입니다 .");
						$("#id_check").css("color", "green");
						$("#submit").attr("disabled", false);
						
			
					} else if(uemail == ""){

						$('#id_check').text('이메일을 입력해주세요.');
						$('#id_check').css('color', 'red');
						$("#submit").attr("disabled", true);				
						
					} else {
						
						$('#id_check').text("이메일형식으로 입력해주세요.");
						$('#id_check').css('color', 'red');
						$("#submit").attr("disabled", true);
					}
					
				
				}
			}, error : function() {
					console.log("실패");
			}
		});
	});
	
});


</script>

<script>
function checkEmail(){
	
	  if($("#uemail").val() == ""){
		  
	       $("#uemail").focus();
	       $("#submit").attr("disabled", false);
	       return false;
	     }
}
</script>

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

</head>
<body>


<div class="login-form">
<center>
<span style="color: green; font-weight: bold;">이메일 인증 (이메일을 인증 받아야 다음 단계로 넘어갈 수 있습니다.)</span> <br> <br>
<div style="text-align: center;">

<form action="/user/find_pass" method="post" onsubmit="return checkEmail()">
							
<div class="form-group">
	<div class="input-group"> 
 		<span class="input-group-addon"><i class="fa fa-user"></i></span>
			<input class ="form-control" type="email" id="uemail" name="uemail" placeholder="  이메일주소를 입력하세요. ">
	</div>
</div>
<div class="check_front" id="id_check"></div><br> <br>
<button type="submit" id="submit" name="submit" class="btn btn-success btn-block login-btn col-8" disabled>인증받기(이메일 보내기)</button><br><br>
<button type="reset" id="cancel" name="cancel" class="btn btn-danger btn-block login-btn col-3 text-aline: center">취소</button>

</form>
</div>

</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>