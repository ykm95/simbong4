<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script>
function checkAll(){
	
	  if($("#cname").val() == ""){
	       $("#cname").focus();
	       return false;
	     }
	 
	  else if($("#mphone").val() == ""){
	       $("#mphone").focus();
	       return false;
	     }
	 
	  else{
	 return true;
	  }
 }


$(document).ready(function() {
	
	//전화번호 유효성 검사

	$('#mphone').blur(function() {
// 	var regExp = /(^01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;

	var regExp=/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;


	if (!regExp.test($('#mphone').val())) {
			if($('#mphone').val()!=""){
			//alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.");
			$('#phone_check').text("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.");
			$('#phone_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);

			return false
			}

		}
	if (regExp.test($('#mphone').val())) {
		if($('#mphone').val()!=""){
		//alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.");
		$('#phone_check').text("올바른 전화번호 입니다.");
		$('#phone_check').css('color', 'blue');
		$("#reg_submit").attr("disabled", false);

		return false
		}

	}
	return true;
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
</style>

</head>
<body>
<div class="login-form">
<form action="/center/login/find_id" method="post" onsubmit="return checkAll()">
<h2 class="text-center">아이디찾기</h2><br><br>

<div class="form-group">
<div class="input-group">
<label for ="cname">이름</label>
<input class ="form-control" type="text" name="cname" id="cname"  />
</div></div>

<div class="form-group">
<div class="input-group">
<label for ="mphone">전화번호</label>
<input class ="form-control" type="text" name="mphone" id="mphone" />
</div></div>

<div class="check_front" id="phone_check"> 
</div><br>
<button id="reg_submit" class="btn btn-success btn-block login-btn">아이디찾기</button>
<button type="reset" id="cancelbtn" class="btn btn-danger btn-block login-btn">취소</button>

</form>
</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>