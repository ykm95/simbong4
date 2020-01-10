<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">



<script>

function checkPassword(upassword){
    
    if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/.test(upassword)){            
//	        alert('숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.');
	$('#pw_form').text("숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.");
	$('#pw_form').css('color', 'red');
// 	$("#reg_submit").attr("disabled", true);
//         $('#upassword').val('').focus();
        return false;
    }    
    var checkNumber = upassword.search(/[0-9]/g);
    var checkEnglish = upassword.search(/[a-z]/ig);
    if(checkNumber <0 || checkEnglish <0){
//	        alert("숫자와 영문자를 혼용하여야 합니다.");	    		
        $('#pw_form').text("숫자와 영문자를 혼용하여야 합니다.");
        $('#pw_form').css('color', 'red');
// 		$("#reg_submit").attr("disabled", true);

//         $('#upassword').val('').focus();
        return false;
    }
    if(/(\w)\1\1\1/.test(upassword)){
//	        alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
		$('#pw_form').text("같은 문자를 4번 이상 사용하실 수 없습니다.");
        $('#pw_form').css('color', 'red');
// 		$("#reg_submit").attr("disabled", true);

//         $('#upassword').val('').focus();
        return false;
    }
        
		$('#pw_form').text("");
    return true;
}

$(document).ready(function() {

	$("#cpassword").blur(function(){
	    checkPassword($('#cpassword').val());
	    $('#cpasswordchk').val("");
	});
	   

	//비밀번호 확인
	$('#cpasswordchk').blur(function() {
		if ($('#cpasswordchk').val() == '') {
			$('#pw_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);

			$('#pw_check').text("비밀번호입력!!");
			return false;
		}

		if ($('#cpassword').val() != $('#cpasswordchk').val()) {
			$('#pw_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);

			$('#pw_check').text("비밀번호가 일치하지 않습니다.");
			return false;
		}

		$('#pw_check').text("비밀번호가 일치합니다.");
		$('#pw_check').css('color', 'blue');
		$("#reg_submit").attr("disabled", false);
	})
	
	});
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
<span style="color: green; font-weight: bold;">변경할 비밀번호를 입력해주세요.</span> <br> <br>             

<form action="/center/pass_change${memail}" method="post">

<div class="form-group">
<div class="input-group"> 
<span class="input-group-addon"><i class="fa fa-lock"></i></span>
<input class="form-control" type = "password" id="cpassword" name = "cpassword" placeholder = "비밀번호를 입력하세요." >
</div></div>  
<div class="check_front" id="pw_form"></div>
<div class="form-group">
<div class="input-group"> 
<span class="input-group-addon"><i class="fa fa-lock"></i></span>
<input class="form-control" type="password" name="cpasswordchk" id="cpasswordchk" placeholder = "위와 같은 비밀번호를 입력하세요."/>
</div></div>
<div class="check_front" id="pw_check"></div>

<button type="submit" name="submit" class="btn btn-success btn-block login-btn">비밀번호 변경</button>

<button type="reset"  class="btn btn-danger btn-block login-btn">취소</button>
</form>
</div>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
