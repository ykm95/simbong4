<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

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

</head>
<body>
<h1>아이디찾기</h1>
<hr>
<form action="/center/login/find_id" method="post" onsubmit="return checkAll()">

<label for ="cname">이름</label>
<input type="text" name="cname" id="cname"  />
<br><br>

<label for ="mphone">전화번호</label>
<input type="text" name="mphone" id="mphone" />
<br>
<div class="check_front" id="phone_check"> 
</div><br>
<button id="reg_submit">아이디찾기</button>
<button type="reset" id="cancelbtn">취소</button>

</form>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>