<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- 주소검색 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				console.log(data)
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
//                     document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } 
//                 else {
//                     document.getElementById("sample6_extraAddress").value = '';
//                 }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                 document.getElementById('uaddress1').value = data.zonecode;
//                 document.getElementById("uaddress2").value = addr;
                
                
//                 $("[name=uaddress1]").val(data.zonecode);
//                 $("[name=uaddress2]").val(addr);

				$("#uaddress1").val(data.zonecode);
                $("#uaddress2").val(addr);
                
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("uaddress3").focus();
            }
        }).open();
    }
</script>



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
					$("#reg_submit").attr("disabled", true);
				
				} else{
				
					var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
					if(regExp.test(uemail)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("");
// 						$("#reg_submit").attr("disabled", false);
						
						$("#id_check").text("사용가능한 이메일입니다 .");
						$("#id_check").css("color", "blue");
						
			
					} else if(uemail == ""){

						$('#id_check').text('이메일을 입력해주세요.');
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);				
						
					} else {
						
						$('#id_check').text("이메일형식으로 입력해주세요.");
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);
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
function checkAll(){
	
	  if($("#uname").val() == ""){
	       $("#uname").focus();
	       return false;
	     }
	  else if($("#uemail").val() == ""){
	       $("#uemail").focus();
	       return false;
	     }
	  else if($("#upassword").val() == ""){
	       $("#upassword").focus();
	       return false;
	     }
	  else if($("#upasswordchk").val() == ""){
	       $("#upasswordchk").focus();
	       return false;
	     }
	  else if($("#uphone").val() == ""){
	       $("#uphone").focus();
	       return false;
	     }
	  else if($("#uaddress1").val() == ""){
	       $("#uaddress1").focus();
	       return false;
	     }
	  else if($("#uaddress2").val() == ""){
	       $("#uaddress2").focus();
	       return false;
	     }
	  else if($("#uaddress3").val() == ""){
	       $("#uaddress3").focus();
	       return false;
	     }
	  else{
	 return true;
	  }
 }


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


	$("#upassword").blur(function(){
	    checkPassword($('#upassword').val());
	    $('#upasswordchk').val("");
	});
 	   

	//비밀번호 확인
	$('#upasswordchk').blur(function() {
		if ($('#upasswordchk').val() == '') {
			$('#pw_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);
// 			$('#upasswordchk').val('');
// 			$('#upasswordchk').focus();

			$('#pw_check').text("비밀번호입력!!");
			return false;
		}

		if ($('#upassword').val() != $('#upasswordchk').val()) {
			$('#pw_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);
// 			$('#upasswordchk').val('');
// 			$('#upasswordchk').focus();

			$('#pw_check').text("비밀번호가 일치하지 않습니다.");
			return false;
		}

		$('#pw_check').text("비밀번호가 일치합니다.");
		$('#pw_check').css('color', 'blue');
		$("#reg_submit").attr("disabled", false);
	})
	
	
	//전화번호 유효성 검사

	$('#uphone').blur(function() {
// 	var regExp = /(^01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;

	var regExp=/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

	

// 	var regExp=(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');

	if (!regExp.test($('#uphone').val())) {
			if($('#uphone').val()!=""){
// 			alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.1");
			$('#phone_check').text("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.");
			$('#phone_check').css('color', 'red');

			return false
			}

		}
	if (regExp.test($('#uphone').val())) {
		if($('#uphone').val()!=""){
		$('#phone_check').text("올바른 전화번호 입니다.");
		$('#phone_check').css('color', 'blue');

// 		alert($("#uphone").val());
		return true
		}

	}
	return false;
	});

});
</script>


<style type="text/css">
#selCnt {
	width: 180px;
}
.form-group :not (:first-child ) * {
	font-weight: normal;
	
}

.form-control {
	width: 50%;
	display: inline;
}

label {
    display: flex;
    margin-bottom: .5rem;
    
    float: right;
}

#postcodeBtn {
	margin-left: 10px;
	width: 120px;
}

</style>
</head>
<body>
	<div class="container">
		<div class="col-xs-12 text-center">

			<div class="col-xs-8" style="margin: 0 auto; float: none;">
				<h2>심봉사 회원가입</h2>

				<form action="/user/login/join" method="post"
					class="form-horizontal" onsubmit="return checkAll()">

					<div class="form-group row">
						<div class="col-3 col-form-label">
							<label for="uname" class="float-right">이름</label>
						</div>
						<input class="form-control" type="text" name="uname" id="uname" />
					</div>

					<div class="form-group row">
						<div class="col-3 col-form-label">
							<label for="uemail">이메일</label>
						</div>
						<input type="text" class="form-control" name="uemail" id="uemail"
							value="${uemail}" placeholder="abc@123.com" />
					</div>
					<div class="check_front" id="id_check"></div>
					
					<div class="form-group row">
						<div class="col-3 col-form-label">
							<label for="upassword">비밀번호</label>
						</div>
						<input class="form-control" type="password" name="upassword"
							id="upassword" />
					</div>
					<div class="check_front" id="pw_form"></div>
		
					<div class="form-group row">
						<div class="col-3 col-form-label">
							<label for="upasswordchk">비밀번호 확인</label>
						</div>
						<input class="form-control" type="password" name="upasswordchk"
							id="upasswordchk" />
					</div>
					<div class="check_front" id="pw_check"></div>
		
					<div class="form-group row">
						<div class="col-3 col-form-label">
							<label for="uphone">전화번호</label>
						</div>
						<input type="text" class="form-control" name="uphone" id="uphone" />
					</div>
					<div class="check_front" id="phone_check"></div>
					
					<div class="form-group row">
						<div class="col-3 col-form-label text-right">성별</div>
						<div class="form-check form-check-inline">
							<label for="gender" class="form-check-label">남&nbsp;</label>
							<input type="radio" class="form-check-input" name="gender" id="gender0" value="0" checked />
							<div class="col-1"></div>
							<label for="gender" class="form-check-label">여&nbsp;</label>
							<input type="radio" class="form-check-input" name="gender" id="gender1" value="1" />
						</div>
					</div>
					
					<div class="form-group row">
						<div class="col-3 col-form-label">
							<label>주소</label> <br>
						</div>
						<input type="text" class="form-control col-2" id="uaddress1" name="uaddress1" placeholder="우편번호" style="width: 20%"/>
						<button id="postcodeBtn" onclick="sample6_execDaumPostcode()" class="form-control btn btn-secondary">우편번호 찾기</button>
					</div>
						
					<div class="form-group row">
						<input class="form-control offset-3 col-3" type="text" id="uaddress2" name="uaddress2" placeholder="주소" /> <br><br> 
						<input class="form-control col-3" type="text" id="uaddress3" name="uaddress3" placeholder="상세주소" />
					</div>
					<br>
					
					<button id="reg_submit" class="btn btn-success">회원가입</button>
					<button type="reset" id="cancelbtn" class="btn btn-warning">취소</button>
				</form>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>