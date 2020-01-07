<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>


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

				$("#address1").val(data.zonecode);
                $("#address2").val(addr);
                
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address3").focus();
            }
        }).open();
    }
</script>



<!-- 아이디 중복 체크 -->
<script>
$(document).ready(function() {
	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#memail").blur(function() {
		var memail = $('#memail').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/center/idCheck?memail='+memail,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);			
				
				
				if (data==1) {
					// 1 : 아이디가 중복되는 문구
					$("#id_check").text("사용중인 이메일입니다 :p");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", true);
				
				} else{
				
					var regExp =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
					if(regExp.test(memail)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("");
// 						$("#reg_submit").attr("disabled", false);
						
						$("#id_check").text("사용가능한 이메일 입니다 .");
						$("#id_check").css("color", "blue");
						
			
					} else if(memail == ""){

						$('#id_check').text('이메일을 입력해주세요.');
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);				
						
					} else {
						
						$('#id_check').text("이메일 형식으로 입력해주세요.");
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
	
	  if($("#cname").val() == ""){
	       $("#cname").focus();
	       return false;
	     }
	  else if($("#memail").val() == ""){
	       $("#memail").focus();
	       return false;
	     }
	  else if($("#business").val() == ""){
	       $("#business").focus();
	       return false;
	     }
	  else if($("#cpassword").val() == ""){
	       $("#cpassword").focus();
	       return false;
	     }
	  else if($("#cpasswordchk").val() == ""){
	       $("#cpasswordchk").focus();
	       return false;
	     }
	  else if($("#mphone").val() == ""){
	       $("#mphone").focus();
	       return false;
	     }
	
	  else if($("#address1").val() == ""){
	       $("#address1").focus();
	       return false;
	     }
	  else if($("#address2").val() == ""){
	       $("#address2").focus();
	       return false;
	     }
	  else if($("#address3").val() == ""){
	       $("#address3").focus();
	       return false;
	     }
	  else{
	 return true;
	  }
 }


function checkPassword(cpassword){
    
    if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/.test(cpassword)){            
//	        alert('숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.');
	$('#pw_form').text("숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.");
	$('#pw_form').css('color', 'red');
// 	$("#reg_submit").attr("disabled", true);
//         $('#upassword').val('').focus();
        return false;
    }    
    var checkNumber = cpassword.search(/[0-9]/g);
    var checkEnglish = cpassword.search(/[a-z]/ig);
    if(checkNumber <0 || checkEnglish <0){
//	        alert("숫자와 영문자를 혼용하여야 합니다.");	    		
        $('#pw_form').text("숫자와 영문자를 혼용하여야 합니다.");
        $('#pw_form').css('color', 'red');
// 		$("#reg_submit").attr("disabled", true);

//         $('#upassword').val('').focus();
        return false;
    }
    if(/(\w)\1\1\1/.test(cpassword)){
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
	
	
	//전화번호 유효성 검사

	$('#mph1').blur(function() {
// 	var regExp = /(^01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;

// 	var regExp=/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

	var regExp=/^{3,4};

	
	if (!regExp.test($('#mph1').val())) {
			if($('#mph1').val()!=""){
// 			alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.1");
			$('#phone_check').text("잘못된 휴대폰 번호입니다.");
			$('#phone_check').css('color', 'red');f

			return false
			}

		}
	if (regExp.test($('#mph1').val())) {
		if($('#mph1').val()!=""){
		$('#phone_check').text("올바른 전화번호 입니다.");
		$('#phone_check').css('color', 'blue');

// 		alert($("#mphone").val());
		return true
		}

	}
	return false;
	});
	
	//전화번호 유효성 검사

	$('#mphone').blur(function() {
// 	var regExp = /(^01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;

	var regExp=/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

// 	var regExp2=/d{4};

	
	if (!regExp.test($('#mphone').val())) {
			if($('#mphone').val()!=""){
// 			alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.1");
			$('#phone_check').text("잘못된 휴대폰 번호입니다.");
			$('#phone_check').css('color', 'red');f

			return false
			}

		}
	if (regExp.test($('#mphone').val())) {
		if($('#mphone').val()!=""){
		$('#phone_check').text("올바른 전화번호 입니다.");
		$('#phone_check').css('color', 'blue');

		return true
		}

	}
	return false;
	});

});
</script>

</head>
<body>
<h1>기관 회원가입</h1>
<hr>
<form action="/center/login/join" method="post" onsubmit="return checkAll()">

<label for ="cname">기관명</label>
<input type="text" name="cname" id="cname"  />
<br><br>
<label for ="businessno">사업자번호</label>
<input type="text" name="businessno" id="businessno"  />
<br><br>
<label for ="cpassword">비밀번호</label>
<input type="password" name="cpassword" id="cpassword" />
<br>
<div class="check_front" id="pw_form"> 
</div><br>
<label for ="cpasswordchk">비밀번호 확인</label>
<input type="password" name="cpasswordchk" id="cpasswordchk" />
<div class="check_front" id="pw_check"> 
</div>
<br>
<label for ="mgr">담당자 이름</label>
<input type="text" name="mgr" id="mgr"  />
<br><br>
<div class="form-group">
<label for ="memail">담당자 이메일</label>
<input type="text" class="form-control" name="memail" id="memail" value="${memail}"
 placeholder="abc@123.com" />
<div class="check_front" id="id_check"> 
</div>
</div>
<br>
담당자 전화번호 : <select name="mphone">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="016">016</option>
       <option value="017">017</option>
       <option value="019">019</option>
     </select>
     - <input type="text"  id= "mphone" name="mphone" size="5"  min="3" maxlength="4"> - <input type="text" id="mphone" name="mphone" size="5" maxlength="4">
     <br>

<div class="check_front" id="phone_check"> 
</div>
   생년월일 : <select name="foundedArr">
   	   <option value="2013">2020</option>
       <option value="2012">2019</option>
       <option value="2011">2018</option>
       <option value="2010">2017</option>
       <option value="2009">2016</option>
       <option value="2008">2015</option>
       <option value="2007">2014</option>
       <option value="2013">2013</option>
       <option value="2012">2012</option>
       <option value="2011">2011</option>
       <option value="2010">2010</option>
       <option value="2009">2009</option>
       <option value="2008">2008</option>
       <option value="2007">2007</option>
       <option value="2006">2006</option>
       <option value="2005">2005</option>
       <option value="2004">2004</option>
       <option value="2003">2003</option>
       <option value="2002">2002</option>
       <option value="2001">2001</option>
       <option value="2000">2000</option>
       <option value="2013">1999</option>
       <option value="2012">1998</option>
       <option value="2011">1997</option>
       <option value="2010">1996</option>
       <option value="2009">1995</option>
       <option value="2008">1994</option>
       <option value="2007">1993</option>
       <option value="2013">1992</option>
       <option value="2012">1991</option>
       <option value="2011">1990</option>
       <option value="2010">1989</option>
       <option value="2009">1988</option>
       <option value="2008">1987</option>
       <option value="2007">1986</option>
       <option value="2006">1985</option>
       <option value="2005">1984</option>
       <option value="2004">1983</option>
       <option value="2003">1982</option>
       <option value="2002">1981</option>
       <option value="2001">1980</option>
       <option value="2000">1979</option>
     </select>년&nbsp;
     <select name="foundedArr">
       <option value="01">1</option>
       <option value="02">2</option>
       <option value="03">3</option>
       <option value="04">4</option>
       <option value="05">5</option>
       <option value="06">6</option>
       <option value="07">7</option>
       <option value="08">8</option>
       <option value="09">9</option>
       <option value="10">10</option>
       <option value="11">11</option>
       <option value="12">12</option>
     </select>월&nbsp;
     <select name="foundedArr">
       <option value="01">1</option>
       <option value="02">2</option>
       <option value="03">3</option>
       <option value="04">4</option>
       <option value="05">5</option>
       <option value="06">6</option>
       <option value="07">7</option>
       <option value="08">8</option>
       <option value="09">9</option>
       <option value="10">10</option>
       <option value="11">11</option>
       <option value="12">12</option>
       <option value="13">13</option>
       <option value="14">14</option>
       <option value="15">15</option>
       <option value="16">16</option>
       <option value="17">17</option>
       <option value="18">18</option>
       <option value="19">19</option>
       <option value="20">20</option>
       <option value="21">21</option>
       <option value="22">22</option>
       <option value="23">23</option>
       <option value="24">24</option>
       <option value="25">25</option>
       <option value="26">26</option>
       <option value="27">27</option>
       <option value="28">28</option>
       <option value="29">29</option>
       <option value="30">30</option>
       <option value="31">31</option>
     </select>일<br><br>
<label>주소</label>
<br>
<input type="text" id="address1" name="address1" placeholder="우편번호"/>

<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/>
<br>
<input type="text" id="address2" name="address2" placeholder="주소" />
<input type="text" id="address3" name="address3" placeholder="상세주소"/>
<br><br>
<button id="reg_submit">회원가입</button>
<button type="reset" id="cancelbtn">취소</button>

</form>
</body>
</html>